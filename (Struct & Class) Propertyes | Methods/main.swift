import Foundation

print("Hello, World!")

//1. Ստեղծել class որը MyTime անունով որը պետք է ունենա ժամանակը բնութագրող property-եր (ժամ, րոպե, վարկյան)։
//Այս կլասի էկզեմպլայրը պետք է ունոնոա հետևյալ մեթոդները՝։
//- փոխել ժամի սկզբնական արժեքը
//- փոխել րոպեի սկզբնական արժեքը
//- փոկել վարկյանի սկզբնական արժեքը
//- վերադաձնի ժամի տեքստային տարբերակը այս ֆորմատով hh:mm:ss (23:45:31)
//- տպի ժամի տեքստային տարբերակը այս ֆորմատով hh:mm:ss (23:45:31)

class MyTime {
    var hour: String = String()
    var minute: String = String()
    var second: String = String()

     func changeCurrentHour() -> String {
        let myhour = "Current time is - hh:mm:ss(\(hour):\(minute):\(second))"
        return myhour
    }
    func changeCurrentMinute(){
        minute = "\(minute)"
    }
    func changeCurrentSecond(){
        second = "\(second)"
    }
}

let instance = MyTime()
instance.hour = "12"
instance.minute = "45"
instance.second = "12"

print(instance.changeCurrentHour())


//2. Ստեղծել class որը MyDate անունով որը պետք է ունենա ամսաթիվը  և ժամանակը բնութագրող property-եր (օր, ամիս, տարի, ժամ, րոպե, վարկյան)։
//Այս կլասի էկզեմպլայրը պետք է ունոնոա հետևյալ մեթոդները՝։
//- փոխել օրվա սկզբնական արժեքը
//- փոխել ամսվա սկզբնական արժեքը
//- փոխել տարվա սկզբնական արժեքը
//- փոխել ժամի սկզբնական արժեքը
//- փոխել րոպեի սկզբնական արժեքը
//- փոկել վարկյանի սկզբնական արժեքը
//- վերադաձնի ամսաթիվի տեքստային տարբերակը այս ֆորմատով dd:mm:yyyy hh:mm:ss (02:03:2022 23:45:31)
//- տպի ժամի տեքստային տարբերակը այս ֆորմատով hh:mm:ssdd:mm:yyyy hh:mm:ss (02:03:2022 23:45:31)


class myDate {

    var day:String = String()
    var months:String = String()
    var year:String = String()
    var hour:String = String()
    var minute:String = String()
    var second:String = String()

    func returnCurrentDate() -> String? {
        return  "Current Date is - dd:mm:yyyy hh:mm:ss (\(day):\(months):\(year) - \(hour):\(minute):\(second))"
    }
    func printCurrentTime(){
        print("Current Time is - dd:mm:yyyy hh:mm:ss (\(day):\(months):\(year) - \(hour):\(minute):\(second))")
    }



    func changeCurrentMonths(curentMounts: String){
        self.months = "\(months)"
    }
    func changeCurrentYear(curentYear: String){
        self.year = "\(year)"
    }
    func changeCurrentMinute(curentMinute: String){
        self.minute = "\(minute)"
    }
    func changeCurrentSecond(curentSecond: String){
        self.second = "\(second)"
    }
    func changeCurrentHour(currentHour: String){
        self.hour = "\(hour)"
    }
    func changeCurrentDay(currentDay: String) {
        self.day = "\(day)"
    }
}

let instacneOfMyDate = myDate()

instacneOfMyDate.hour = "11"
instacneOfMyDate.changeCurrentHour(currentHour: instacneOfMyDate.hour)
instacneOfMyDate.day = "14"
instacneOfMyDate.changeCurrentDay(currentDay: instacneOfMyDate.day)
instacneOfMyDate.months = "06"
instacneOfMyDate.changeCurrentMonths(curentMounts: instacneOfMyDate.months)
instacneOfMyDate.year = "2022"
instacneOfMyDate.changeCurrentYear(curentYear: instacneOfMyDate.year)
instacneOfMyDate.minute = "51"
instacneOfMyDate.changeCurrentMinute(curentMinute: instacneOfMyDate.minute)
instacneOfMyDate.second = "46"
instacneOfMyDate.changeCurrentSecond(curentSecond: instacneOfMyDate.second)

if let correntDate = instacneOfMyDate.returnCurrentDate() {
        print(correntDate)
}

instacneOfMyDate.printCurrentTime()



//3. Ստեղծել class որը MyDate անունով որը պետք է ունենա ամսաթիվը  և ժամանակը բնութագրող property-եր (օր, ամիս, տարի, MyTime տիպի property-ի որը ստեղծվել էր առաջին խնդրում)։
//Այս կլասի էկզեմպլայրը պետք է ունոնոա հետևյալ մեթոդները՝։
//- փոխել օրվա սկզբնական արժեքը
//- փոխել ամսվա սկզբնական արժեքը
//- փոխել տարվա սկզբնական արժեքը
//- փոխել ժամի սկզբնական արժեքը
//- փոխել րոպեի սկզբնական արժեքը
//- փոկել վարկյանի սկզբնական արժեքը
//- վերադաձնի ամսաթիվի տեքստային տարբերակը այս ֆորմատով dd:mm:yyyy hh:mm:ss (02:03:2022 23:45:31)
//- տպի ժամի տեքստային տարբերակը այս ֆորմատով hh:mm:ssdd:mm:yyyy hh:mm:ss (02:03:2022 23:45:31)



class MyDate {
    var day:String = String("defoult value")
    var mounth:String = String("defoult value")
    var year:String = String("defoult value")
    var currentTime = MyTime()

    func changeCurrentDay() {
        day = "\(day)"
    }
    func changeCurrentMounth(){
        mounth = "\(mounth)"
    }
    func changeCurrentYear(){
        year = "\(year)"
    }

    func returnMyDateTypeOfString(mydate : MyDate) -> String {
        let date = "dd:mm:yyyy hh:mm:ss (\(mydate.day):\(mydate.mounth):\(mydate.year) - \(currentTime.hour):\(currentTime.minute):\(currentTime.second))"
        return date
    }
    func printTimeAsString() {
         print("hh:mm:ssdd:mm:yyyy hh:mm:ss \(currentTime.hour):\(currentTime.minute):\(currentTime.second)")
    }
}

var currentYear = "2022"
let instanceDateAndTime = MyDate()


instanceDateAndTime.day = "14"
instanceDateAndTime.mounth = "06"
instanceDateAndTime.year = currentYear
instanceDateAndTime.currentTime.hour = "13"
instanceDateAndTime.currentTime.minute = "24"
instanceDateAndTime.currentTime.second = "56"

print(instanceDateAndTime.returnMyDateTypeOfString(mydate: instanceDateAndTime))
print(instanceDateAndTime.printTimeAsString())



//4. Ստեղծել steuct MyPoint որը իր մեջ կապարունակի կետի կորդինատները երկչափ հարթուտյունում բնութագրող property-եր (x, y) և կետի անունը ներկայացնող property-ի
//Այս կլասի էկզեմպլայրը պետք է ունոնոա հետևյալ մեթոդները։
//- փոխել  x-ի սկզբնական արժեքը
//- փոխել  y-ի սկզբնական արժեքը
//- փոխել  կետի անունի սկզբնական արժեքը
//- վերադաձնել  կետի տվյալները այս ֆորմատով a(x: 1, y: 4)
//- տպի  կետի տվյալները այս ֆորմատով a(x: 1, y: 4)


struct MyPoint {
    var x: String
    var y: String
    var name:String = "l"
    
    func changeXproperty(){
        
    }
}

var firstInstance = MyPoint(x: "x", y: "y", name: "name")
