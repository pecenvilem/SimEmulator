WITH RECURSIVE cte (`element`, `length`) AS
-- builds sequence of LinearElements connected by PositionedRelation starting from given element
-- traverses topology only in the forward direction
(
    SELECT `id`, `length` FROM `LinearElement` WHERE id = "21e2fed0-5c8b-48e6-8378-cee47ba74c6x"
    UNION
    (
        SELECT
            element_x.id,
            element_x.length
        FROM
            `LinearElement` element_0,
            `PositionedRelation` relation,
            `LinearElement` element_x
        WHERE
                element_0.id = "21e2fed0-5c8b-48e6-8378-cee47ba74c6x"
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
            `LinearElement` element_0,
            `PositionedRelation` relation,
            `LinearElement` element_x
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
    Balise.id,
    Balise.positionInGroup, IF(Balise.duplicate='no', 0, IF(Balise.duplicate='yes', 1, NULL)) AS "duplicate",
    bg_names.name
FROM
    cte
        INNER JOIN
    `NamedResource` elem_name ON elem_name.id = cte.element
        LEFT OUTER JOIN
    `AssociatedPoint` point ON cte.element = point.id_PositioningNetElement
        LEFT OUTER JOIN
    `LocationFeatureAssignment` l_f ON point.id = l_f.id_AssociatedFeature
        LEFT OUTER JOIN
    `LocatedNetEntity` ON l_f.id_FunctionalLocation = `LocatedNetEntity`.id_EntityLocation_Primary
        LEFT OUTER JOIN
    `Balise` ON `Balise`.id = `LocatedNetEntity`.id
        LEFT OUTER JOIN
    `NamedResource` AS b_names ON b_names.id = Balise.id
        LEFT OUTER JOIN
    `BaliseGroup` ON Balise.id_BaliseGroup = BaliseGroup.id
        LEFT OUTER JOIN
    `NamedResource` bg_names ON bg_names.id = BaliseGroup.id
WHERE
    `Balise`.id IS NOT NULL
        OR
    point.id IS NULL
;