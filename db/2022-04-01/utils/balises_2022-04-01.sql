WITH RECURSIVE cte (`element`, `length`) AS
-- builds sequence of LinearElements connected by positionedrelation starting from given element
-- traverses topology only in the forward direction
(
    SELECT `id`, `length` FROM `linearelement` WHERE id = "{STARTING_NET_ELEMENT}"
    UNION
    (
        SELECT
            element_x.id,
            element_x.length
        FROM
            `linearelement` element_0,
            `positionedrelation` relation,
            `linearelement` element_x
        WHERE
                element_0.id = "{STARTING_NET_ELEMENT}"
            AND
                (
                    (
                    relation.id_PositioningNetElement_A = element_0.id
                    AND relation.positionOnA = "1"
                    AND relation.id_PositioningNetElement_B = element_x.id
                    )
                OR
                    (
                    relation.id_PositioningNetElement_B = element_0.id
                    AND relation.positionOnB = "1"
                    AND relation.id_PositioningNetElement_A = element_x.id
                    )
                )
            AND
                relation.navigability = '1'
    )
    UNION DISTINCT
    (
        SELECT
            element_x.id,
            element_x.length
        FROM
            `cte`,
            `linearelement` element_0,
            `positionedrelation` relation,
            `linearelement` element_x
        WHERE
                element_0.id = cte.element
            AND
                (
                    (
                    relation.id_PositioningNetElement_A = element_0.id
                    AND relation.positionOnA = "1"
                    AND relation.id_PositioningNetElement_B = element_x.id
                    )
                OR
                    (
                    relation.id_PositioningNetElement_B = element_0.id
                    AND relation.positionOnB = "1"
                    AND relation.id_PositioningNetElement_A = element_x.id
                    )
                )
            AND
                relation.navigability = '1'
    )
)
SELECT
    cte.element,
    cte.length,
    pos.intrinsicReference, pos.deltaPosition,
    balise.id, balise.defaultTelegram
--    balise.positionInGroup, IF(balise.duplicate='no', 0, IF(balise.duplicate='yes', 1, NULL)) AS "duplicate",
--    bg_names.name,
--    balise.defaultTelegram
FROM
    cte
        INNER JOIN
    `associatedposition` pos ON cte.element = pos.id_PositioningNetElement
        INNER JOIN
    `associatedlocationfeature` l_f ON pos.id = l_f.id_AssociatedFeature
        INNER JOIN
    `associatedlocationentity` l_e ON l_f.id_AssociatedLocation = l_e.id_AssociatedLocation
        INNER JOIN
    `balise` ON `balise`.id = l_e.id_netEntity
--        LEFT OUTER JOIN
--    `namedresource` AS b_names ON b_names.id = balise.id
--        LEFT OUTER JOIN
--    `balisegroup` ON balise.id_BaliseGroup = balisegroup.id
--        LEFT OUTER JOIN
--    `namedresource` bg_names ON bg_names.id = balisegroup.id
WHERE
    `balise`.id IS NOT NULL
;