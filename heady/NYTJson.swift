/* 
 Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

 Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

 For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

 */

import Foundation
struct NYTJson {
    let status : String?
    let copyright : String?
    let section : String?
    let last_updated : String?
    let num_results : Int
    let results : [Results]
}
extension NYTJson: Codable {}

struct Results {
    let section : String
    let subsection : String?
    let title : String
    let abstract : String?
    let url : String
    let byline : String?
    let item_type : String?
    let updated_date : String?
    let created_date : String?
    let published_date : String?
    let material_type_facet : String?
    let kicker : String?
    let des_facet : [String]?
    let org_facet : [String]?
    let per_facet : [String]?
    let geo_facet : [String]?
    let multimedia : [Multimedia]
    let short_url : String?
}
extension Results: Codable {}

struct Multimedia {
    let url : String?
    let format : String?
    let height : Int?
    let width : Int?
    let type : String?
    let subtype : String?
    let caption : String?
    let copyright : String?
}
extension Multimedia: Codable {}
