# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

beach_life = Product.create(title: "Beach Life", title: "Beach Life Package", author: "Jodie Parker", price: "4.99", sku: "BLP1", description: %{<p>Beach Life is a photograph collection of life on the beach around West Cornwall. Taken during Summer 2014. </p>

            <p>In this collection, Jodie Parker has included her favourite images that best portray life on the beach, in what has been a varied summer.</p>
            <p><strong>What You'll Get</strong></p>
            <ul class="no-indent">
                <li>Beach Life Collection</li>
                <li>5 Images that portray beach life in the Summer of 2014</li>
                <li>Standard Licence to use personally</li>
                <li>Commercial Licence to use for 1 website</li>
            </ul>})