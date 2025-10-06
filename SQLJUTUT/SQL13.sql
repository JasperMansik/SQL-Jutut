
INSERT INTO Exhibition(
                       title,
                       startDate,
                       endDate,
                       isOnlineExhibition,
                       locationId
)
VALUES ('Navigating North', '2022-10-07', '2023-04-02', 1,
        (SELECT locationId FROM Location WHERE name = 'Museum of Contemporary Art Kiasma'));





