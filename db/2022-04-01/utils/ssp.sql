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
    point.intrinsicReference, point.deltaPosition,
    speedsection.maxSpeed
FROM
    cte
        LEFT OUTER JOIN
    `associatedpoint` point ON cte.element = point.id_PositioningNetElement
        LEFT OUTER JOIN
    `associatedsegment` segment ON segment.id_AssociatedPoint_A = point.id OR segment.id_AssociatedPoint_B = point.id
        LEFT OUTER JOIN
    `locationfeatureassignment` l_f ON segment.id = l_f.id_AssociatedFeature
        LEFT OUTER JOIN
    `locatednetentity` ON l_f.id_FunctionalLocation = `locatednetentity`.id_EntityLocation_Primary
        LEFT OUTER JOIN
    `speedsection` ON `speedsection`.id = `locatednetentity`.id
WHERE
    `speedsection`.id IS NOT NULL
;