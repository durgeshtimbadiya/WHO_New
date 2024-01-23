//
//  ConentManager.swift
//  WHO
//
//  Created by Apple on 30/10/23.
//

import Foundation

class ContentManager : NSObject {
    // MARK: - Static Properties -
    static let shared = ContentManager()
    
    var eConditionsList = [ConditionsModel]()
    var ePreferencesList = [PreferencesModel]()
    var informationList = [InformationModel]()
    var contraceptiveList = [ContraceptualChoicesModel]()

    override init() {

        var CombinedHarmonalList = [ContraceptualContentModel]()
        
        CombinedHarmonalList.append(ContraceptualContentModel(bullet: false ,title: "" ,content: CombinedHarmonal.content_1 + "\n" ,bulletValue: ""))
        CombinedHarmonalList.append(ContraceptualContentModel(bullet: false ,title: CombinedHarmonal.title_2 ,content: "" ,bulletValue: ""))
        CombinedHarmonalList.append(ContraceptualContentModel(bullet: false ,title: "" ,content: CombinedHarmonal.content_3 ,bulletValue: ""))
        CombinedHarmonalList.append(ContraceptualContentModel(bullet: false ,title: CombinedHarmonal.title_4 ,content: "" ,bulletValue: ""))
        CombinedHarmonalList.append(ContraceptualContentModel(bullet: false ,title: "" ,content: CombinedHarmonal.content_5 ,bulletValue: ""))
        CombinedHarmonalList.append(ContraceptualContentModel(bullet: false ,title: CombinedHarmonal.title_6 ,content: "" ,bulletValue: ""))
        CombinedHarmonalList.append(ContraceptualContentModel(bullet: false ,title: CombinedHarmonal.title_7 ,content: "" ,bulletValue: ""))
        CombinedHarmonalList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: CombinedHarmonal.content_8 ,bulletValue: ""))
        CombinedHarmonalList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: CombinedHarmonal.content_9 ,bulletValue: ""))
        CombinedHarmonalList.append(ContraceptualContentModel(bullet: false ,title: CombinedHarmonal.title_10 ,content: "" ,bulletValue: ""))
        CombinedHarmonalList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: CombinedHarmonal.content_11 ,bulletValue: ""))
        CombinedHarmonalList.append(ContraceptualContentModel(bullet: false ,title: CombinedHarmonal.title_12 ,content: "" ,bulletValue: ""))
        CombinedHarmonalList.append(ContraceptualContentModel(bullet: true ,title: "",content: CombinedHarmonal.content_13 ,bulletValue: ""))
        CombinedHarmonalList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: CombinedHarmonal.content_14 ,bulletValue: ""))
        CombinedHarmonalList.append(ContraceptualContentModel(bullet: false ,title: CombinedHarmonal.title_15 ,content: "" ,bulletValue: ""))
        CombinedHarmonalList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: CombinedHarmonal.content_16 ,bulletValue: ""))
        CombinedHarmonalList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: CombinedHarmonal.content_17 ,bulletValue: ""))
        CombinedHarmonalList.append(ContraceptualContentModel(bullet: false ,title: CombinedHarmonal.title_18 ,content: "" ,bulletValue: ""))
        CombinedHarmonalList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: CombinedHarmonal.content_19 + "\n\n\n" ,bulletValue: ""))
        
        var NonHarmonalList = [ContraceptualContentModel]()
        
        NonHarmonalList.append(ContraceptualContentModel(bullet: false ,title: "" ,content: NonHarmonal.content_1 ,bulletValue: ""))
        NonHarmonalList.append(ContraceptualContentModel(bullet: false ,title: NonHarmonal.title_2 ,content: "" ,bulletValue: ""))
        NonHarmonalList.append(ContraceptualContentModel(bullet: false ,title: "" ,content: NonHarmonal.content_3 ,bulletValue: ""))
        NonHarmonalList.append(ContraceptualContentModel(bullet: false ,title: NonHarmonal.title_4 ,content: "" ,bulletValue: ""))
        NonHarmonalList.append(ContraceptualContentModel(bullet: false ,title: "" ,content: NonHarmonal.content_5 ,bulletValue: ""))
        NonHarmonalList.append(ContraceptualContentModel(bullet: false ,title: NonHarmonal.title_6 ,content: "" ,bulletValue: ""))
        NonHarmonalList.append(ContraceptualContentModel(bullet: false ,title: NonHarmonal.title_7 ,content: "" ,bulletValue: ""))
        NonHarmonalList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: NonHarmonal.content_8 ,bulletValue: ""))
        NonHarmonalList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: NonHarmonal.content_9 ,bulletValue: ""))
        NonHarmonalList.append(ContraceptualContentModel(bullet: false ,title: NonHarmonal.title_10 ,content: "" ,bulletValue: ""))
        NonHarmonalList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: NonHarmonal.content_11 ,bulletValue: ""))
        NonHarmonalList.append(ContraceptualContentModel(bullet: false ,title: NonHarmonal.title_12 ,content: "" ,bulletValue: ""))
        NonHarmonalList.append(ContraceptualContentModel(bullet: true ,title: "",content: NonHarmonal.content_13 ,bulletValue: ""))
        NonHarmonalList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: NonHarmonal.content_14 ,bulletValue: ""))
        NonHarmonalList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: NonHarmonal.content_15 ,bulletValue: ""))
        NonHarmonalList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: NonHarmonal.content_16 ,bulletValue: ""))
        NonHarmonalList.append(ContraceptualContentModel(bullet: false ,title: NonHarmonal.title_17 ,content: "" ,bulletValue: ""))
        NonHarmonalList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: NonHarmonal.content_18 ,bulletValue: ""))
        NonHarmonalList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: NonHarmonal.content_19 ,bulletValue: ""))
        NonHarmonalList.append(ContraceptualContentModel(bullet: false ,title: "" ,content: NonHarmonal.content_20 + "\n\n" ,bulletValue: ""))

        
        var ProgestonOnlyPillsList = [ContraceptualContentModel]()
        
        ProgestonOnlyPillsList.append(ContraceptualContentModel(bullet: false ,title: ProgestonOnlyPills.title_1 ,content: "" ,bulletValue: ""))
        ProgestonOnlyPillsList.append(ContraceptualContentModel(bullet: false ,title: "" ,content: ProgestonOnlyPills.content_2 ,bulletValue: ""))
        ProgestonOnlyPillsList.append(ContraceptualContentModel(bullet: false ,title: ProgestonOnlyPills.title_3 ,content: "" ,bulletValue: ""))
        ProgestonOnlyPillsList.append(ContraceptualContentModel(bullet: false ,title: ProgestonOnlyPills.title_4 ,content: "" ,bulletValue: ""))
        ProgestonOnlyPillsList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: ProgestonOnlyPills.content_5 ,bulletValue: ""))
        ProgestonOnlyPillsList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: ProgestonOnlyPills.content_6 ,bulletValue: ""))
        ProgestonOnlyPillsList.append(ContraceptualContentModel(bullet: false ,title: ProgestonOnlyPills.title_7 ,content: "" ,bulletValue: ""))
        ProgestonOnlyPillsList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: ProgestonOnlyPills.content_8 ,bulletValue: ""))
        ProgestonOnlyPillsList.append(ContraceptualContentModel(bullet: false ,title: ProgestonOnlyPills.title_9 ,content: "" ,bulletValue: ""))
        ProgestonOnlyPillsList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: ProgestonOnlyPills.content_10 ,bulletValue: ""))
        ProgestonOnlyPillsList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: ProgestonOnlyPills.content_11 ,bulletValue: ""))
        ProgestonOnlyPillsList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: ProgestonOnlyPills.content_12 ,bulletValue: ""))
        ProgestonOnlyPillsList.append(ContraceptualContentModel(bullet: false ,title: ProgestonOnlyPills.title_13 ,content: "" ,bulletValue: ""))
        ProgestonOnlyPillsList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: ProgestonOnlyPills.content_14 ,bulletValue: ""))
        ProgestonOnlyPillsList.append(ContraceptualContentModel(bullet: false ,title: "" ,content: ProgestonOnlyPills.content_15 + "\n\n" ,bulletValue: ""))
        
        var ProgestogenOnlyInjectablesList = [ContraceptualContentModel]()
        
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: false ,title: "" ,content: ProgestogenOnlyInjectables.content_1 ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: false ,title: "" ,content: ProgestogenOnlyInjectables.content_2 ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: false ,title: "" ,content: ProgestogenOnlyInjectables.content_3 ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: false ,title: "" ,content: ProgestogenOnlyInjectables.content_4 ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: false ,title: "" ,content: ProgestogenOnlyInjectables.content_5 ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: false ,title: "" ,content: ProgestogenOnlyInjectables.content_6 ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: false ,title: "" ,content: ProgestogenOnlyInjectables.content_7 ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: false ,title: ProgestogenOnlyInjectables.title_8 ,content: "" ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: false ,title: ProgestogenOnlyInjectables.title_9 ,content: "" ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: true ,title: ""  ,content: ProgestogenOnlyInjectables.content_10 ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: ProgestogenOnlyInjectables.content_11 ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: false ,title: ProgestogenOnlyInjectables.title_12 ,content: "" ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: ProgestogenOnlyInjectables.content_13 ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: false ,title: ProgestogenOnlyInjectables.title_14 ,content: "" ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: ProgestogenOnlyInjectables.content_15 ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: false ,title: ProgestogenOnlyInjectables.title_16 ,content: "" ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: false ,title: ProgestogenOnlyInjectables.title_17 ,content: "" ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: ProgestogenOnlyInjectables.content_18 ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: ProgestogenOnlyInjectables.content_19 ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: false ,title: ProgestogenOnlyInjectables.title_20 ,content: "" ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: ProgestogenOnlyInjectables.content_21 ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: false ,title: ProgestogenOnlyInjectables.title_22 ,content: "" ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: ProgestogenOnlyInjectables.content_23 ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: ProgestogenOnlyInjectables.content_24 ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: false ,title: "" ,content: ProgestogenOnlyInjectables.content_25 ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: false ,title: ProgestogenOnlyInjectables.title_26 ,content: "" ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: ProgestogenOnlyInjectables.content_27 ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: ProgestogenOnlyInjectables.content_28 ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: ProgestogenOnlyInjectables.content_29 ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: false ,title: ProgestogenOnlyInjectables.title_30 ,content: "" ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: ProgestogenOnlyInjectables.content_31 ,bulletValue: ""))
        ProgestogenOnlyInjectablesList.append(ContraceptualContentModel(bullet: false ,title: "" ,content: ProgestogenOnlyInjectables.content_32 + "\n\n" ,bulletValue: ""))
        
        
        var ImplantsList = [ContraceptualContentModel]()
        
        ImplantsList.append(ContraceptualContentModel(bullet: false ,title: "" ,content: Implants.content_1 ,bulletValue: ""))
        ImplantsList.append(ContraceptualContentModel(bullet: false ,title: "" ,content: Implants.content_2 ,bulletValue: ""))
        ImplantsList.append(ContraceptualContentModel(bullet: false ,title: "" ,content: Implants.content_3 ,bulletValue: ""))
        ImplantsList.append(ContraceptualContentModel(bullet: false ,title: "" ,content: Implants.content_4 ,bulletValue: ""))
        ImplantsList.append(ContraceptualContentModel(bullet: true ,title: "" , content: Implants.content_5 ,bulletValue: ""))
        ImplantsList.append(ContraceptualContentModel(bullet: true ,title: "" , content: Implants.content_6 ,bulletValue: ""))
        ImplantsList.append(ContraceptualContentModel(bullet: false ,title: "" , content: Implants.content_7 ,bulletValue: "2."))
        ImplantsList.append(ContraceptualContentModel(bullet: false ,title: Implants.title_8 ,content: "" ,bulletValue: ""))
        ImplantsList.append(ContraceptualContentModel(bullet: false ,title: Implants.title_9 ,content: "" ,bulletValue: ""))
        ImplantsList.append(ContraceptualContentModel(bullet: true ,title: ""  ,content: Implants.content_10 ,bulletValue: ""))
        ImplantsList.append(ContraceptualContentModel(bullet: true ,title: "" , content: Implants.content_11 ,bulletValue: ""))
        ImplantsList.append(ContraceptualContentModel(bullet: false ,title: Implants.title_12 ,content: "" ,bulletValue: ""))
        ImplantsList.append(ContraceptualContentModel(bullet: false ,title: "" ,content: Implants.content_13 ,bulletValue: ""))
        ImplantsList.append(ContraceptualContentModel(bullet: false ,title: Implants.title_14 ,content: "" ,bulletValue: ""))
        ImplantsList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: Implants.content_15 ,bulletValue: ""))
        ImplantsList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: Implants.content_16 ,bulletValue: ""))
        ImplantsList.append(ContraceptualContentModel(bullet: true ,title: "" ,content: Implants.content_17 ,bulletValue: ""))
        ImplantsList.append(ContraceptualContentModel(bullet: false ,title: Implants.title_18 ,content: "" ,bulletValue: ""))
        ImplantsList.append(ContraceptualContentModel(bullet: true ,title: "",content: Implants.content_19 ,bulletValue: ""))
        ImplantsList.append(ContraceptualContentModel(bullet: false ,title: "" ,content: Implants.content_20 + "\n\n" ,bulletValue: ""))
        
        
        var LevonorgestrelIUDList = [ContraceptualContentModel]()
        
        LevonorgestrelIUDList.append(ContraceptualContentModel(bullet: false ,title: "" ,content:  LevonorgestrelIUD.content_1 ,bulletValue: ""))
        LevonorgestrelIUDList.append(ContraceptualContentModel(bullet: false ,title: "" ,content:  LevonorgestrelIUD.content_2 ,bulletValue: ""))
        LevonorgestrelIUDList.append(ContraceptualContentModel(bullet: false ,title: "" ,content:  LevonorgestrelIUD.content_3 ,bulletValue: ""))
        LevonorgestrelIUDList.append(ContraceptualContentModel(bullet: false ,title: LevonorgestrelIUD.title_4 ,content: "" ,bulletValue: ""))
        LevonorgestrelIUDList.append(ContraceptualContentModel(bullet: false ,title: LevonorgestrelIUD.title_5 ,content: "" ,bulletValue: ""))
        LevonorgestrelIUDList.append(ContraceptualContentModel(bullet: true ,title: "" , content:  LevonorgestrelIUD.content_6 ,bulletValue: ""))
        LevonorgestrelIUDList.append(ContraceptualContentModel(bullet: true ,title: "" , content:  LevonorgestrelIUD.content_7 ,bulletValue: ""))
        LevonorgestrelIUDList.append(ContraceptualContentModel(bullet: false ,title: "" ,content:  LevonorgestrelIUD.content_8 ,bulletValue: ""))
        LevonorgestrelIUDList.append(ContraceptualContentModel(bullet: false ,title: LevonorgestrelIUD.title_9 ,content: "" ,bulletValue: ""))
        LevonorgestrelIUDList.append(ContraceptualContentModel(bullet: true ,title: "" , content: LevonorgestrelIUD.content_10 ,bulletValue: ""))
        LevonorgestrelIUDList.append(ContraceptualContentModel(bullet: false ,title: LevonorgestrelIUD.title_11 ,content: "" ,bulletValue: ""))
        LevonorgestrelIUDList.append(ContraceptualContentModel(bullet: true ,title: "" , content:  LevonorgestrelIUD.content_12 ,bulletValue: ""))
        LevonorgestrelIUDList.append(ContraceptualContentModel(bullet: true ,title: "" , content:  LevonorgestrelIUD.content_13 ,bulletValue: ""))
        LevonorgestrelIUDList.append(ContraceptualContentModel(bullet: true ,title: "" , content:  LevonorgestrelIUD.content_14 ,bulletValue: ""))
        LevonorgestrelIUDList.append(ContraceptualContentModel(bullet: false ,title: "" ,content:  LevonorgestrelIUD.content_15 ,bulletValue: ""))
        LevonorgestrelIUDList.append(ContraceptualContentModel(bullet: false ,title: LevonorgestrelIUD.title_16 ,content: "" ,bulletValue: ""))
        LevonorgestrelIUDList.append(ContraceptualContentModel(bullet: true ,title: "" , content:  LevonorgestrelIUD.content_17 ,bulletValue: ""))
        LevonorgestrelIUDList.append(ContraceptualContentModel(bullet: true ,title: "" , content:  LevonorgestrelIUD.content_18 ,bulletValue: ""))
        LevonorgestrelIUDList.append(ContraceptualContentModel(bullet: true ,title: "" , content:  LevonorgestrelIUD.content_19 ,bulletValue: ""))
        LevonorgestrelIUDList.append(ContraceptualContentModel(bullet: true ,title: "" , content:  LevonorgestrelIUD.content_20 + "\n\n",bulletValue: ""))
        
        
        
        var CopperIntrauterineDeviceList = [ContraceptualContentModel]()
        
        CopperIntrauterineDeviceList.append(ContraceptualContentModel(bullet: false ,title: "" ,content: CopperIntrauterineDevice.content_1 ,bulletValue: ""))
        CopperIntrauterineDeviceList.append(ContraceptualContentModel(bullet: false ,title: "" ,content: CopperIntrauterineDevice.content_2 ,bulletValue: ""))
        CopperIntrauterineDeviceList.append(ContraceptualContentModel(bullet: false ,title: CopperIntrauterineDevice.title_3 , content: "" ,bulletValue: ""))
        CopperIntrauterineDeviceList.append(ContraceptualContentModel(bullet: false ,title: CopperIntrauterineDevice.title_4 , content: "" ,bulletValue: ""))
        CopperIntrauterineDeviceList.append(ContraceptualContentModel(bullet: true ,title: "" , content:  CopperIntrauterineDevice.content_5 ,bulletValue: ""))
        CopperIntrauterineDeviceList.append(ContraceptualContentModel(bullet: true ,title: "" , content:  CopperIntrauterineDevice.content_6 ,bulletValue: ""))
        CopperIntrauterineDeviceList.append(ContraceptualContentModel(bullet: false ,title: CopperIntrauterineDevice.title_7 , content: "" ,bulletValue: ""))
        CopperIntrauterineDeviceList.append(ContraceptualContentModel(bullet: true ,title: "" , content:  CopperIntrauterineDevice.content_8 ,bulletValue: ""))
        CopperIntrauterineDeviceList.append(ContraceptualContentModel(bullet: false ,title: CopperIntrauterineDevice.title_9 , content: "" ,bulletValue: ""))
        CopperIntrauterineDeviceList.append(ContraceptualContentModel(bullet: true ,title: "" , content:  CopperIntrauterineDevice.content_10 ,bulletValue: ""))
        CopperIntrauterineDeviceList.append(ContraceptualContentModel(bullet: true ,title: ""  ,content:  CopperIntrauterineDevice.content_11 ,bulletValue: ""))
        CopperIntrauterineDeviceList.append(ContraceptualContentModel(bullet: true ,title: ""  ,content:  CopperIntrauterineDevice.content_12 ,bulletValue: ""))
        CopperIntrauterineDeviceList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  CopperIntrauterineDevice.content_13 ,bulletValue: ""))
        CopperIntrauterineDeviceList.append(ContraceptualContentModel(bullet: false ,title: CopperIntrauterineDevice.title_14 ,content: "" ,bulletValue: ""))
        CopperIntrauterineDeviceList.append(ContraceptualContentModel(bullet: true ,title: "" , content:  CopperIntrauterineDevice.content_15 ,bulletValue: ""))
        CopperIntrauterineDeviceList.append(ContraceptualContentModel(bullet: true ,title: "" , content:  CopperIntrauterineDevice.content_16 ,bulletValue: ""))
        CopperIntrauterineDeviceList.append(ContraceptualContentModel(bullet: true ,title: "" , content:  CopperIntrauterineDevice.content_17 ,bulletValue: ""))
        CopperIntrauterineDeviceList.append(ContraceptualContentModel(bullet: true ,title: "" , content:  CopperIntrauterineDevice.content_18 + "\n\n",bulletValue: ""))
        
        
        var BarrierMethodsList = [ContraceptualContentModel]()
        
        BarrierMethodsList.append(ContraceptualContentModel(bullet: false ,title: BarrierMethods.title_1 ,content: "" ,bulletValue: ""))
        BarrierMethodsList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  BarrierMethods.content_2 ,bulletValue: ""))
        BarrierMethodsList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  BarrierMethods.content_3 ,bulletValue: ""))
        BarrierMethodsList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  BarrierMethods.content_4 ,bulletValue: ""))
        BarrierMethodsList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  BarrierMethods.content_5 ,bulletValue: ""))
        BarrierMethodsList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  BarrierMethods.content_6 ,bulletValue: ""))
        BarrierMethodsList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  BarrierMethods.content_7 ,bulletValue: ""))
        BarrierMethodsList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  BarrierMethods.content_8 ,bulletValue: ""))
        BarrierMethodsList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  BarrierMethods.content_9 ,bulletValue: ""))
        BarrierMethodsList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  BarrierMethods.content_10 + "\n\n" ,bulletValue: ""))
        
        
        var LactationalAmenorrheaMethodList = [ContraceptualContentModel]()
        
        LactationalAmenorrheaMethodList.append(ContraceptualContentModel(bullet: false ,title: LactationalAmenorrheaMethod.title_1 ,content: "" ,bulletValue: ""))
        LactationalAmenorrheaMethodList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  LactationalAmenorrheaMethod.content_2 ,bulletValue: ""))
        LactationalAmenorrheaMethodList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  LactationalAmenorrheaMethod.content_3 ,bulletValue: ""))
        LactationalAmenorrheaMethodList.append(ContraceptualContentModel(bullet: false ,title: LactationalAmenorrheaMethod.title_4 ,content: "" ,bulletValue: ""))
        LactationalAmenorrheaMethodList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  LactationalAmenorrheaMethod.content_5 ,bulletValue: ""))
        LactationalAmenorrheaMethodList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  LactationalAmenorrheaMethod.content_6 ,bulletValue: ""))
        LactationalAmenorrheaMethodList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  LactationalAmenorrheaMethod.content_7 ,bulletValue: ""))
        LactationalAmenorrheaMethodList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  LactationalAmenorrheaMethod.content_8 ,bulletValue: ""))
        LactationalAmenorrheaMethodList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  LactationalAmenorrheaMethod.content_9 + "\n\n" ,bulletValue: ""))
        
        
        
        var FemaleSterializationList = [ContraceptualContentModel]()
        
        FemaleSterializationList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  FemaleSterialization.content_1 ,bulletValue: ""))
        FemaleSterializationList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  FemaleSterialization.content_2 ,bulletValue: ""))
        FemaleSterializationList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  FemaleSterialization.content_3 ,bulletValue: ""))
        FemaleSterializationList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  FemaleSterialization.content_4 ,bulletValue: ""))
        FemaleSterializationList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  FemaleSterialization.content_5 ,bulletValue: ""))
        FemaleSterializationList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  FemaleSterialization.content_6 ,bulletValue: ""))
        FemaleSterializationList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  FemaleSterialization.content_7 + "\n\n" ,bulletValue: ""))
        
        
        var MaleSterilizationList = [ContraceptualContentModel]()
        
        MaleSterilizationList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  "\n" + MaleSterilization.content_1 ,bulletValue: ""))
        MaleSterilizationList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  MaleSterilization.content_2 ,bulletValue: ""))
        MaleSterilizationList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  MaleSterilization.content_3 ,bulletValue: ""))
        MaleSterilizationList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  MaleSterilization.content_4 ,bulletValue: ""))
        MaleSterilizationList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  MaleSterilization.content_5 ,bulletValue: ""))
        MaleSterilizationList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  MaleSterilization.content_6 ,bulletValue: ""))
        MaleSterilizationList.append(ContraceptualContentModel(bullet: false ,title: MaleSterilization.title_7 ,content: "" ,bulletValue: ""))
        MaleSterilizationList.append(ContraceptualContentModel(bullet: true ,title: "" , content:  MaleSterilization.content_8 ,bulletValue: ""))
        MaleSterilizationList.append(ContraceptualContentModel(bullet: true ,title: "" , content:  MaleSterilization.content_9 ,bulletValue: ""))
        MaleSterilizationList.append(ContraceptualContentModel(bullet: true ,title: "" , content:  MaleSterilization.content_10 + "\n\n" ,bulletValue: ""))
        
        var AboutTheWheelList = [ContraceptualContentModel]()
        
        AboutTheWheelList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  AboutTheWheel.content_1 ,bulletValue: ""))
        AboutTheWheelList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  AboutTheWheel.content_2 ,bulletValue: ""))
        AboutTheWheelList.append(ContraceptualContentModel(bullet: true ,title: "" , content:  AboutTheWheel.content_3 ,bulletValue: ""))
        AboutTheWheelList.append(ContraceptualContentModel(bullet: true ,title: "" , content:  AboutTheWheel.content_4 ,bulletValue: ""))
        AboutTheWheelList.append(ContraceptualContentModel(bullet: true ,title: "" , content:  AboutTheWheel.content_5 ,bulletValue: ""))
        AboutTheWheelList.append(ContraceptualContentModel(bullet: true ,title: "" , content:  AboutTheWheel.content_6 ,bulletValue: ""))
        AboutTheWheelList.append(ContraceptualContentModel(bullet: true ,title: "" , content:  AboutTheWheel.content_7 ,bulletValue: ""))
        AboutTheWheelList.append(ContraceptualContentModel(bullet: true ,title: "" , content:  AboutTheWheel.content_8 ,bulletValue: ""))
        AboutTheWheelList.append(ContraceptualContentModel(bullet: true ,title: "" , content:  AboutTheWheel.content_9 ,bulletValue: ""))
        AboutTheWheelList.append(ContraceptualContentModel(bullet: false ,title: "" , content:  AboutTheWheel.content_10 ,bulletValue: ""))
        
        
        
        contraceptiveList.append(ContraceptualChoicesModel(image: "ic_contraceptual_harmonal" ,title: ContraceptiveList.title1 ,issueName1:ContraceptiveList.IssueName1 ,issueImg1: "ic_bleeding" ,issueName2: ContraceptiveList.IssueName01 ,issueImg2: "ic_client_control" ,issueName3: "" ,issueImg3: "" ,progressTitle: ContraceptiveList.ProgressTitle1 ,progressPercent: 92 ,desc: ContraceptiveList.Desc1 ,howItWorks: ContraceptiveList.HowItWork1 ,list: CombinedHarmonalList ,detailIcon: "ic_combined_harmonal_detail" ,layoutParams: 6 ,progressVal: ContraceptiveList.ProgressVal1 ,progresscontent: false))
        
        contraceptiveList.append(ContraceptualChoicesModel(image: "ic_non_harmonal_contra" ,title: ContraceptiveList.title2 ,issueName1:ContraceptiveList.IssueName2 ,issueImg1: "ic_no_harmones" ,issueName2: ContraceptiveList.IssueName02 ,issueImg2: "ic_client_control" ,issueName3: "" ,issueImg3: "" ,progressTitle: ContraceptiveList.ProgressTitle2 ,progressPercent: 98 ,desc: ContraceptiveList.Desc2 ,howItWorks: ContraceptiveList.HowItWork2 ,list: NonHarmonalList ,detailIcon: "ic_non_hormonal_details" ,layoutParams: 6 ,progressVal: ContraceptiveList.ProgressVal2 ,progresscontent: true))
        
        contraceptiveList.append(ContraceptualChoicesModel(image: "ic_contraceptual_harmonal" ,title: ContraceptiveList.title3 ,issueName1:ContraceptiveList.IssueName3 ,issueImg1: "ic_client_control" ,issueName2: "" ,issueImg2: "" ,issueName3: "" ,issueImg3: "" ,progressTitle: ContraceptiveList.ProgressTitle3 ,progressPercent: 90 ,desc: ContraceptiveList.Desc3 ,howItWorks: ContraceptiveList.HowItWork3 ,list: ProgestonOnlyPillsList ,detailIcon: "ic_non_hormonal_details" ,layoutParams: 3 ,progressVal: ContraceptiveList.ProgressVal3 ,progresscontent: false))
        
        contraceptiveList.append(ContraceptualChoicesModel(image: "ic_progestogen_only" ,title: ContraceptiveList.title4 ,issueName1:ContraceptiveList.IssueName4 ,issueImg1: "ic_privacy" ,issueName2: "" ,issueImg2: "" ,issueName3: "" ,issueImg3: "" ,progressTitle: ContraceptiveList.ProgressTitle4 ,progressPercent: 97 ,desc: ContraceptiveList.Desc4 ,howItWorks: ContraceptiveList.HowItWork4 ,list: ProgestogenOnlyInjectablesList ,detailIcon: "ic_progestongen_detail" ,layoutParams: 3 ,progressVal: ContraceptiveList.ProgressVal4 ,progresscontent: false))
        
        contraceptiveList.append(ContraceptualChoicesModel(image: "ic_implants" ,title: ContraceptiveList.title5 ,issueName1:ContraceptiveList.IssueName5 ,issueImg1: "ic_highly_effective" ,issueName2: ContraceptiveList.IssueName05 ,issueImg2: "ic_long_lasting" ,issueName3: "" ,issueImg3: "" ,progressTitle: ContraceptiveList.ProgressTitle5 ,progressPercent: 99 ,desc: ContraceptiveList.Desc5 ,howItWorks: ContraceptiveList.HowItWork5 ,list: ImplantsList ,detailIcon: "ic_implants_details" ,layoutParams: 6 ,progressVal: ContraceptiveList.ProgressVal5 ,progresscontent: false))
        
        contraceptiveList.append(ContraceptualChoicesModel(image: "ic_uid" ,title: ContraceptiveList.title6 ,issueName1:ContraceptiveList.IssueName6 ,issueImg1: "ic_highly_effective" ,issueName2: ContraceptiveList.IssueName06 ,issueImg2: "ic_privacy" ,issueName3: ContraceptiveList.IssueName006 ,issueImg3: "ic_long_lasting" ,progressTitle: ContraceptiveList.ProgressTitle6 ,progressPercent: 99 ,desc: ContraceptiveList.Desc6 ,howItWorks: ContraceptiveList.HowItWork6 ,list: LevonorgestrelIUDList ,detailIcon: "ic_levonorgestrel_details" ,layoutParams: 9 ,progressVal: ContraceptiveList.ProgressVal6 ,progresscontent: false))
        
        contraceptiveList.append(ContraceptualChoicesModel(image: "ic_copper" ,title: ContraceptiveList.title7 ,issueName1:ContraceptiveList.IssueName7 ,issueImg1: "ic_highly_effective" ,issueName2: ContraceptiveList.IssueName07 ,issueImg2: "ic_no_harmones" ,issueName3: ContraceptiveList.IssueName007 ,issueImg3: "ic_bleeding" ,progressTitle: ContraceptiveList.ProgressTitle7 ,progressPercent: 99 ,desc: ContraceptiveList.Desc7 ,howItWorks: ContraceptiveList.HowItWork7 ,list: CopperIntrauterineDeviceList ,detailIcon: "ic_copper_intrauterne_details" ,layoutParams: 9 ,progressVal: ContraceptiveList.ProgressVal7 ,progresscontent: false))
        
        contraceptiveList.append(ContraceptualChoicesModel(image: "ic_barrier" ,title: ContraceptiveList.title8 ,issueName1:ContraceptiveList.IssueName8 ,issueImg1: "ic_sti_prevention" ,issueName2: ContraceptiveList.IssueName08 ,issueImg2: "ic_no_harmones" ,issueName3: "" ,issueImg3: "" ,progressTitle: ContraceptiveList.ProgressTitle8 ,progressPercent: 85 ,desc: "\(ContraceptiveList.Desc8_1)\n\(ContraceptiveList.Desc8_2)\n\(ContraceptiveList.Desc8_3)\n\(ContraceptiveList.Desc8_4)\n" ,howItWorks: ContraceptiveList.HowItWork8 ,list: BarrierMethodsList ,detailIcon: "ic_barrier_details" ,layoutParams: 6 ,progressVal: ContraceptiveList.ProgressVal8 ,progresscontent: false))
        
        contraceptiveList.append(ContraceptualChoicesModel(image: "ic_amenorrhea" ,title: ContraceptiveList.title9 ,issueName1:ContraceptiveList.IssueName9 ,issueImg1: "ic_no_harmones" ,issueName2: "" ,issueImg2: "" ,issueName3: "" ,issueImg3: "" ,progressTitle: ContraceptiveList.ProgressTitle9 ,progressPercent: 98 ,desc: ContraceptiveList.Desc9 ,howItWorks: ContraceptiveList.HowItWork9 ,list: LactationalAmenorrheaMethodList ,detailIcon: "ic_lactational_amenorrhea_details" ,layoutParams: 3 ,progressVal: ContraceptiveList.ProgressVal9 ,progresscontent: false))
        
        contraceptiveList.append(ContraceptualChoicesModel(image: "ic_female_sterialization" ,title: ContraceptiveList.title10 ,issueName1:ContraceptiveList.IssueName10 ,issueImg1: "ic_highly_effective" ,issueName2: ContraceptiveList.IssueName010 ,issueImg2: "ic_no_harmones" ,issueName3: ContraceptiveList.IssueName0010 ,issueImg3: "ic_long_lasting" ,progressTitle: ContraceptiveList.ProgressTitle10 ,progressPercent: 99 ,desc: ContraceptiveList.Desc10 ,howItWorks: ContraceptiveList.HowItWork10 ,list: FemaleSterializationList ,detailIcon: "ic_female_sterialization_details" ,layoutParams: 9 ,progressVal: ContraceptiveList.ProgressVal10 ,progresscontent: false))
        
        contraceptiveList.append(ContraceptualChoicesModel(image: "ic_male_steriallization" ,title: ContraceptiveList.title11 ,issueName1:ContraceptiveList.IssueName11 ,issueImg1: "ic_highly_effective" ,issueName2: ContraceptiveList.IssueName011 ,issueImg2: "ic_no_harmones" ,issueName3: ContraceptiveList.IssueName0011 ,issueImg3: "ic_long_lasting" ,progressTitle: ContraceptiveList.ProgressTitle11 ,progressPercent: 99 ,desc: ContraceptiveList.Desc11 ,howItWorks: ContraceptiveList.HowItWork11 ,list: MaleSterilizationList ,detailIcon: "ic_male_sterialization_details" ,layoutParams: 9 ,progressVal: ContraceptiveList.ProgressVal11 ,progresscontent: false))
        
        
        
        
        
        var ageList = [ConditionProgressModel]()
        
        ageList.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.ageLess18 ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[0]))
        ageList.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.ageLess18 ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        ageList.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.ageLess18 ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[2]))
        ageList.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.ageLess18 ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[3]))
        ageList.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.ageLess18 ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[4]))
        ageList.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.ageLess18 ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[5]))
        ageList.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.ageLess18 ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[6]))
        
        var ageList1 = [ConditionProgressModel]()
        
        ageList1.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.ageLess40 ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[0]))
        ageList1.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.ageLess40 ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        ageList1.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.ageLess40 ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[2]))
        ageList1.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.ProgressVal2_1 ,progressValueF:12 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.ageLess40 ,icon:"ic_1_2_a" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[3]))
        ageList1.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.ageLess40 ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[4]))
        ageList1.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.ageLess40 ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[5]))
        ageList1.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.ageLess40 ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[6]))
        
        
        
        
        eConditionsList.append(ConditionsModel(conditionTitle:EligibilityList.age3_1 ,subViewType:1 ,content:"" ,checkBoxContent:"" ,checkBoxContent2:"" ,age:EligibilityList.num0 ,list:ageList ,isArrow:true ,list1:ageList1))
        
        
        
        
        var anaemiaList = [ConditionProgressModel]()
        
        anaemiaList.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.Anaemia ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[0]))
        anaemiaList.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.Anaemia ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        anaemiaList.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.Anaemia ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[2]))
        anaemiaList.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.Anaemia ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[3]))
        anaemiaList.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.Anaemia ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[4]))
        anaemiaList.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.Anaemia ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[5]))
        anaemiaList.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.ProgressVal4_1 ,progressValueF:1 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.Anaemia ,icon:"ic_1_z" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[6]))
        
        
        eConditionsList.append(ConditionsModel(conditionTitle:EligibilityList.Anaemia ,subViewType:3 ,content:EligibilityList.Anaemia ,checkBoxContent:"" ,checkBoxContent2:"" ,age:EligibilityList.num0 ,list:anaemiaList ,isArrow:false ,list1:[]))
        
        
        
        var cancerList = [ConditionProgressModel]()
        
        cancerList.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num4 ,progressValueF:4 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.CancerBreastCancer ,icon:"ic_4" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[0]))
        cancerList.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.CancerBreastCancer ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        cancerList.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num4 ,progressValueF:4 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.CancerBreastCancer ,icon:"ic_4" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[2]))
        cancerList.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.num4 ,progressValueF:4 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.CancerBreastCancer ,icon:"ic_4" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[3]))
        cancerList.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num4 ,progressValueF:4 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.CancerBreastCancer ,icon:"ic_4" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[4]))
        cancerList.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.num4 ,progressValueF:4 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.CancerBreastCancer ,icon:"ic_4" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[5]))
        cancerList.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.CancerBreastCancer ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[6]))
        
        var cancerList1 = [ConditionProgressModel]()
        
        cancerList1.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.CancerCervicalCancer ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[0]))
        cancerList1.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.CancerCervicalCancer ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        cancerList1.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.CancerCervicalCancer ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[2]))
        cancerList1.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.CancerCervicalCancer ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[3]))
        cancerList1.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.CancerCervicalCancer ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[4]))
        cancerList1.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.num4 ,progressValueF:4 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.CancerCervicalCancer ,icon:"ic_4" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[5]))
        cancerList1.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.num4 ,progressValueF:4 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.CancerCervicalCancer ,icon:"ic_4" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[6]))
        
        
        eConditionsList.append(ConditionsModel(conditionTitle:EligibilityList.conditionTitle8_1 ,subViewType:2 ,content:"" ,checkBoxContent:EligibilityList.checkboxContent8_1 ,checkBoxContent2:EligibilityList.checkboxContent8_2 ,age:EligibilityList.num0 ,list:cancerList ,isArrow:true ,list1:cancerList1))
        
        
        
        var cardiovascularDiseasesList = [ConditionProgressModel]()
        
        cardiovascularDiseasesList.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num4 ,progressValueF:4 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.CardiovascularDiseases_StrokeIHD ,icon:"ic_4" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[0]))
        cardiovascularDiseasesList.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.CardiovascularDiseases_StrokeIHD ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        cardiovascularDiseasesList.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.CardiovascularDiseases_StrokeIHD ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[2]))
        cardiovascularDiseasesList.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.num3 ,progressValueF:3 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.CardiovascularDiseases_StrokeIHD ,icon:"ic_3" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[3]))
        cardiovascularDiseasesList.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.CardiovascularDiseases_StrokeIHD ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[4]))
        cardiovascularDiseasesList.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.CardiovascularDiseases_StrokeIHD ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[5]))
        cardiovascularDiseasesList.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.CardiovascularDiseases_StrokeIHD ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[6]))
        
        var cardiovascularDiseasesList1 = [ConditionProgressModel]()
        
        cardiovascularDiseasesList1.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num3 ,progressValueF:3 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.CardiovascularDiseases_ValvularHeart ,icon:"ic_3" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[0]))
        cardiovascularDiseasesList1.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.CardiovascularDiseases_ValvularHeart ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        cardiovascularDiseasesList1.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.CardiovascularDiseases_ValvularHeart ,icon:"ic_2_x" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[2]))
        cardiovascularDiseasesList1.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.CardiovascularDiseases_ValvularHeart ,icon:"ic_2_x" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[3]))
        cardiovascularDiseasesList1.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.CardiovascularDiseases_ValvularHeart ,icon:"ic_2_x" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[4]))
        cardiovascularDiseasesList1.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.ProgressVal10_6r7 ,progressValueF:2 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.CardiovascularDiseases_ValvularHeart ,icon:"ic_2_x" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[5]))
        cardiovascularDiseasesList1.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.ProgressVal10_6r7 ,progressValueF:2 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.CardiovascularDiseases_ValvularHeart ,icon:"ic_2_x" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[6]))
        
        
        eConditionsList.append(ConditionsModel(conditionTitle:EligibilityList.conditionTitle11_1 ,subViewType:2 ,content:"" ,checkBoxContent:EligibilityList.checkboxContent11_1 ,checkBoxContent2:EligibilityList.checkboxContent11_2 ,age:EligibilityList.num0 ,list:cardiovascularDiseasesList ,isArrow:true ,list1:cardiovascularDiseasesList1))
        
        
        
        
        
        var deepVeinThrombosisList = [ConditionProgressModel]()
        
        deepVeinThrombosisList.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num4 ,progressValueF:4 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.DeepVeinThrombosis_HO ,icon:"ic_4" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[0]))
        deepVeinThrombosisList.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.DeepVeinThrombosis_HO ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        deepVeinThrombosisList.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.DeepVeinThrombosis_HO ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[2]))
        deepVeinThrombosisList.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.DeepVeinThrombosis_HO ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[3]))
        deepVeinThrombosisList.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.DeepVeinThrombosis_HO ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[4]))
        deepVeinThrombosisList.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.DeepVeinThrombosis_HO ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[5]))
        deepVeinThrombosisList.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.DeepVeinThrombosis_HO ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[6]))
        
        var deepVeinThrombosisList1 = [ConditionProgressModel]()
        
        deepVeinThrombosisList1.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num4 ,progressValueF:4 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.DeepVeinThrombosis_AcuteDVT ,icon:"ic_4" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[0]))
        deepVeinThrombosisList1.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num3 ,progressValueF:3 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.DeepVeinThrombosis_AcuteDVT ,icon:"ic_3" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        deepVeinThrombosisList1.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.ProgressVal13_3r4r5 ,progressValueF:3 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.DeepVeinThrombosis_AcuteDVT ,icon:"ic_3_r" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[2]))
        deepVeinThrombosisList1.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.ProgressVal13_3r4r5 ,progressValueF:3 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.DeepVeinThrombosis_AcuteDVT ,icon:"ic_3_r" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[3]))
        deepVeinThrombosisList1.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.ProgressVal13_3r4r5 ,progressValueF:3 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.DeepVeinThrombosis_AcuteDVT ,icon:"ic_3_r" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[4]))
        deepVeinThrombosisList1.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.num3 ,progressValueF:3 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.DeepVeinThrombosis_AcuteDVT ,icon:"ic_3_r" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[5]))
        deepVeinThrombosisList1.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.DeepVeinThrombosis_AcuteDVT ,icon:"ic_1" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[6]))
        
        
        eConditionsList.append(ConditionsModel(conditionTitle:EligibilityList.conditionTitle14_1 ,subViewType:2 ,content:"" ,checkBoxContent:EligibilityList.checkboxContent14_1 ,checkBoxContent2:EligibilityList.checkboxContent14_2 ,age:EligibilityList.num0 ,list:deepVeinThrombosisList ,isArrow:true ,list1:deepVeinThrombosisList1))
        
        
        var diabetesMellitusList = [ConditionProgressModel]()
        
        diabetesMellitusList.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.ProgressVal15_1r4 ,progressValueF:2 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.DiabetesMellitus_Current ,icon:"ic_2_s" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[0]))
        diabetesMellitusList.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.DiabetesMellitus_Current ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        diabetesMellitusList.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.DiabetesMellitus_Current ,icon:"ic_2" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[2]))
        diabetesMellitusList.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.ProgressVal15_1r4 ,progressValueF:2 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.DiabetesMellitus_Current ,icon:"ic_2_s" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[3]))
        diabetesMellitusList.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.DiabetesMellitus_Current ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[4]))
        diabetesMellitusList.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.DiabetesMellitus_Current ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[5]))
        diabetesMellitusList.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.DiabetesMellitus_Current ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[6]))
        
        
        eConditionsList.append(ConditionsModel(conditionTitle:EligibilityList.DiabetesMellitus_Current ,subViewType:3 ,content:EligibilityList.DiabetesMellitus_Current ,checkBoxContent:"" ,checkBoxContent2:"" ,age:EligibilityList.num0 ,list:diabetesMellitusList ,isArrow:false ,list1:[]))
        
        
        
        var epilepsyList = [ConditionProgressModel]()
        
        epilepsyList.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num3 ,progressValueF:3 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.EpilepsyOnAnticonvulsants ,icon:"ic_3" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[0]))
        epilepsyList.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.EpilepsyOnAnticonvulsants ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        epilepsyList.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.ProgressVal17_3 ,progressValueF:3 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.EpilepsyOnAnticonvulsants ,icon:"ic_3_l" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[2]))
        epilepsyList.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.EpilepsyOnAnticonvulsants ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[3]))
        epilepsyList.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.ProgressVal17_5 ,progressValueF:2 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.EpilepsyOnAnticonvulsants ,icon:"ic_2_l" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[4]))
        epilepsyList.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.EpilepsyOnAnticonvulsants ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[5]))
        epilepsyList.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.EpilepsyOnAnticonvulsants ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[6]))
        
        
        eConditionsList.append(ConditionsModel(conditionTitle:EligibilityList.EpilepsyOnAnticonvulsants ,subViewType:3 ,content:EligibilityList.EpilepsyOnAnticonvulsants ,checkBoxContent:"" ,checkBoxContent2:"" ,age:EligibilityList.num0 ,list:epilepsyList ,isArrow:false ,list1:[]))
        
        
        
        
        var fibroidUterusList = [ConditionProgressModel]()
        
        fibroidUterusList.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.FibroidUterus ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[0]))
        fibroidUterusList.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.FibroidUterus ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        fibroidUterusList.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.FibroidUterus ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[2]))
        fibroidUterusList.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.FibroidUterus ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[3]))
        fibroidUterusList.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.FibroidUterus ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[4]))
        fibroidUterusList.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.ProgressVal18_6r7 ,progressValueF:1 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.FibroidUterus ,icon:"ic_1_t" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[5]))
        fibroidUterusList.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.ProgressVal18_6r7 ,progressValueF:1 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.FibroidUterus ,icon:"ic_1_t" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[6]))
        
        
        eConditionsList.append(ConditionsModel(conditionTitle:EligibilityList.FibroidUterus ,subViewType:3 ,content:EligibilityList.FibroidUterus ,checkBoxContent:"" ,checkBoxContent2:"" ,age:EligibilityList.num0 ,list:fibroidUterusList ,isArrow:false ,list1:[]))
        
        
        
        var gestationalTrophoblasticDiseaseList = [ConditionProgressModel]()
        
        gestationalTrophoblasticDiseaseList.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.GestationalTrophoblasticDisease ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[0]))
        gestationalTrophoblasticDiseaseList.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.GestationalTrophoblasticDisease ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        gestationalTrophoblasticDiseaseList.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.GestationalTrophoblasticDisease ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[2]))
        gestationalTrophoblasticDiseaseList.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.GestationalTrophoblasticDisease ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[3]))
        gestationalTrophoblasticDiseaseList.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.GestationalTrophoblasticDisease ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[4]))
        gestationalTrophoblasticDiseaseList.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.ProgressVal20_6 ,progressValueF:34 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.GestationalTrophoblasticDisease ,icon:"ic_3_4_u" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[5]))
        gestationalTrophoblasticDiseaseList.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.ProgressVal20_7 ,progressValueF:34 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.GestationalTrophoblasticDisease ,icon:"ic_3_4_u" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[6]))
        
        
        eConditionsList.append(ConditionsModel(conditionTitle:EligibilityList.GestationalTrophoblasticDisease ,subViewType:3 ,content:EligibilityList.GestationalTrophoblasticDisease ,checkBoxContent:"" ,checkBoxContent2:"" ,age:EligibilityList.num0 ,list:gestationalTrophoblasticDiseaseList ,isArrow:false ,list1:[]))
        
        
        
        
        
        var HeadacheNList = [ConditionProgressModel]()
        
        HeadacheNList.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num4 ,progressValueF:4 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.HeadacheWith ,icon:"ic_4" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[0]))
        HeadacheNList.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num3 ,progressValueF:3 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.HeadacheWith ,icon:"ic_3" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[1]))
        HeadacheNList.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.ProgressVal22r23_3456r1 ,progressValueF:23 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.HeadacheWith ,icon:"ic_2_3_0" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[2]))
        HeadacheNList.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.ProgressVal22r23_3456r1 ,progressValueF:23 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.HeadacheWith ,icon:"ic_2_3_0" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[3]))
        HeadacheNList.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.ProgressVal22r23_3456r1 ,progressValueF:23 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.HeadacheWith ,icon:"ic_2_3_0" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[4]))
        HeadacheNList.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.ProgressVal22r23_3456r1 ,progressValueF:23 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.HeadacheWith ,icon:"ic_2_3_0" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[5]))
        HeadacheNList.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.HeadacheWith ,icon:"ic_1" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[6]))
        
        var HeadacheNList1 = [ConditionProgressModel]()
        
        HeadacheNList1.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.ProgressVal22r23_3456r1 ,progressValueF:23 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.HeadacheWithout ,icon:"ic_2_3_0" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[0]))
        HeadacheNList1.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.HeadacheWithout ,icon:"ic_2" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[1]))
        HeadacheNList1.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.HeadacheWithout ,icon:"ic_1" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[2]))
        HeadacheNList1.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.HeadacheWithout ,icon:"ic_2" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[3]))
        HeadacheNList1.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.HeadacheWithout ,icon:"ic_2" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[4]))
        HeadacheNList1.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.HeadacheWithout ,icon:"ic_2" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[5]))
        HeadacheNList1.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.HeadacheWithout ,icon:"ic_1" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[6]))
        
        
        eConditionsList.append(ConditionsModel(conditionTitle:EligibilityList.conditionTitle24_1 ,subViewType:2 ,content:"" ,checkBoxContent:EligibilityList.checkboxContent24_1 ,checkBoxContent2:EligibilityList.checkboxContent24_2 ,age:EligibilityList.num0 ,list:HeadacheNList ,isArrow:true ,list1:HeadacheNList1))
        
        
        
        var hypertensionList = [ConditionProgressModel]()
        
        hypertensionList.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num3 ,progressValueF:3 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.HypertensionLess160 ,icon:"ic_3" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[0]))
        hypertensionList.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.HypertensionLess160 ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        hypertensionList.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.HypertensionLess160 ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[2]))
        hypertensionList.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.HypertensionLess160 ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[3]))
        hypertensionList.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.HypertensionLess160 ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[4]))
        hypertensionList.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.HypertensionLess160 ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[5]))
        hypertensionList.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.HypertensionLess160 ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[6]))
        
        var hypertensionList1 = [ConditionProgressModel]()
        
        hypertensionList1.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num4 ,progressValueF:4 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.HypertensionGreater160 ,icon:"ic_4" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[0]))
        hypertensionList1.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.HypertensionGreater160 ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        hypertensionList1.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.HypertensionGreater160 ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[2]))
        hypertensionList1.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.num3 ,progressValueF:3 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.HypertensionGreater160 ,icon:"ic_3" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[3]))
        hypertensionList1.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.HypertensionGreater160 ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[4]))
        hypertensionList1.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.HypertensionGreater160 ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[5]))
        hypertensionList1.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.HypertensionGreater160 ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[6]))
        
        
        eConditionsList.append(ConditionsModel(conditionTitle:EligibilityList.conditionTitle27_1 ,subViewType:2 ,content:"" ,checkBoxContent:EligibilityList.checkboxContent27_1 ,checkBoxContent2:EligibilityList.checkboxContent27_2 ,age:EligibilityList.num0 ,list:hypertensionList ,isArrow:true ,list1:hypertensionList1))
        
        
        var hIVAIDSList = [ConditionProgressModel]()
        
        hIVAIDSList.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.ProgressVal28_1r3r4r5 ,progressValueF:1 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.HivAids ,icon:"ic_1_g" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[0]))
        hIVAIDSList.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.HivAids ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        hIVAIDSList.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.ProgressVal28_1r3r4r5 ,progressValueF:1 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.HivAids ,icon:"ic_1_g" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[2]))
        hIVAIDSList.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.ProgressVal28_1r3r4r5 ,progressValueF:1 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.HivAids ,icon:"ic_1_g" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[3]))
        hIVAIDSList.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.ProgressVal28_1r3r4r5 ,progressValueF:1 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.HivAids ,icon:"ic_1_g" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[4]))
        hIVAIDSList.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.ProgressVal28_6r7 ,progressValueF:23 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.HivAids ,icon:"ic_2_3_h" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[5]))
        hIVAIDSList.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.ProgressVal28_6r7 ,progressValueF:23 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.HivAids ,icon:"ic_2_3_h" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[6]))
        
        
        eConditionsList.append(ConditionsModel(conditionTitle:EligibilityList.HivAids ,subViewType:3 ,content:EligibilityList.HivAids ,checkBoxContent:"" ,checkBoxContent2:"" ,age:EligibilityList.num0 ,list:hIVAIDSList ,isArrow:false ,list1:[]))
        
        
        
        var liverDiseaseList = [ConditionProgressModel]()
        
        liverDiseaseList.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num4 ,progressValueF:4 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.LiverDiseaseAcute ,icon:"ic_4" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[0]))
        liverDiseaseList.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num4 ,progressValueF:4 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.LiverDiseaseAcute ,icon:"ic_4" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        liverDiseaseList.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.LiverDiseaseAcute ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[2]))
        liverDiseaseList.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.LiverDiseaseAcute ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[3]))
        liverDiseaseList.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.LiverDiseaseAcute ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[4]))
        liverDiseaseList.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.num3 ,progressValueF:3 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.LiverDiseaseAcute ,icon:"ic_3" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[5]))
        liverDiseaseList.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.LiverDiseaseAcute ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[6]))
        
        var liverDiseaseList1 = [ConditionProgressModel]()
        
        liverDiseaseList1.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num4 ,progressValueF:4 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.LiverDiseaseCirrhosis ,icon:"ic_4" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[0]))
        liverDiseaseList1.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num4 ,progressValueF:4 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.LiverDiseaseCirrhosis ,icon:"ic_4" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        liverDiseaseList1.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num3 ,progressValueF:3 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.LiverDiseaseCirrhosis ,icon:"ic_3" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[2]))
        liverDiseaseList1.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.num3 ,progressValueF:3 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.LiverDiseaseCirrhosis ,icon:"ic_3" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[3]))
        liverDiseaseList1.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num3 ,progressValueF:3 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.LiverDiseaseCirrhosis ,icon:"ic_3" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[4]))
        liverDiseaseList1.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.ProgressVal31_6 ,progressValueF:3 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.LiverDiseaseCirrhosis ,icon:"ic_3_y" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[5]))
        liverDiseaseList1.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.LiverDiseaseCirrhosis ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[6]))
        
        
        eConditionsList.append(ConditionsModel(conditionTitle:EligibilityList.conditionTitle32_1 ,subViewType:2 ,content:"" ,checkBoxContent:EligibilityList.checkboxContent32_1 ,checkBoxContent2:EligibilityList.checkboxContent32_2 ,age:EligibilityList.num0 ,list:liverDiseaseList ,isArrow:true ,list1:liverDiseaseList1))
        
        
        
        var nulliparousList = [ConditionProgressModel]()
        
        nulliparousList.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.Nulliparous ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[0]))
        nulliparousList.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.Nulliparous ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        nulliparousList.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.Nulliparous ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[2]))
        nulliparousList.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.Nulliparous ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[3]))
        nulliparousList.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.Nulliparous ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[4]))
        nulliparousList.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.Nulliparous ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[5]))
        nulliparousList.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.Nulliparous ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[6]))
        
        
        eConditionsList.append(ConditionsModel(conditionTitle:EligibilityList.Nulliparous ,subViewType:3 ,content:EligibilityList.Nulliparous ,checkBoxContent:"" ,checkBoxContent2:"" ,age:EligibilityList.num0 ,list:nulliparousList ,isArrow:false ,list1:[]))
        
        
        
        
        var PCODList = [ConditionProgressModel]()
        
        PCODList.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.PCOD ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[0]))
        PCODList.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num4 ,progressValueF:4 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.PCOD ,icon:"ic_4" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        PCODList.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.PCOD ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[2]))
        PCODList.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.PCOD ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[3]))
        PCODList.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.PCOD ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[4]))
        PCODList.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.PCOD ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[5]))
        PCODList.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.PCOD ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[6]))
        
        
        eConditionsList.append(ConditionsModel(conditionTitle:EligibilityList.PCOD ,subViewType:3 ,content:EligibilityList.PCOD ,checkBoxContent:"" ,checkBoxContent2:"" ,age:EligibilityList.num0 ,list:PCODList ,isArrow:false ,list1:[]))
        
        
        
        var pelvicInflammatoryDiseaseList = [ConditionProgressModel]()
        
        pelvicInflammatoryDiseaseList.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.PelvicInflammatory ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[0]))
        pelvicInflammatoryDiseaseList.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.PelvicInflammatory ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        pelvicInflammatoryDiseaseList.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.PelvicInflammatory ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[2]))
        pelvicInflammatoryDiseaseList.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.PelvicInflammatory ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[3]))
        pelvicInflammatoryDiseaseList.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.PelvicInflammatory ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[4]))
        pelvicInflammatoryDiseaseList.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.ProgressVal36_6r7 ,progressValueF:4 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.PelvicInflammatory ,icon:"ic_4_e " ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[5]))
        pelvicInflammatoryDiseaseList.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.ProgressVal36_6r7 ,progressValueF:4 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.PelvicInflammatory ,icon:"ic_4_e" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[6]))
        
        
        eConditionsList.append(ConditionsModel(conditionTitle:EligibilityList.PelvicInflammatory ,subViewType:3 ,content:EligibilityList.PelvicInflammatory ,checkBoxContent:"" ,checkBoxContent2:"" ,age:EligibilityList.num0 ,list:pelvicInflammatoryDiseaseList ,isArrow:false ,list1:[]))
        
        
        
        
        var postAbortalList = [ConditionProgressModel]()
        
        postAbortalList.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.ProgressVal38_1r3r4r5 ,progressValueF:1 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.PostAbortalMedical ,icon:"ic_1_c" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[0]))
        postAbortalList.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.PostAbortalMedical ,icon:"ic_1_c" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[1]))
        postAbortalList.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.ProgressVal38_1r3r4r5 ,progressValueF:1 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.PostAbortalMedical ,icon:"ic_1_c" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[2]))
        postAbortalList.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.ProgressVal38_1r3r4r5 ,progressValueF:1 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.PostAbortalMedical ,icon:"ic_1_c" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[3]))
        postAbortalList.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.ProgressVal38_1r3r4r5 ,progressValueF:1 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.PostAbortalMedical ,icon:"ic_1_c" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[4]))
        postAbortalList.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.ProgressVal38_6r7 ,progressValueF:2 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.PostAbortalMedical ,icon:"ic_2_d" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[5]))
        postAbortalList.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.ProgressVal38_6r7 ,progressValueF:2 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.PostAbortalMedical ,icon:"ic_2_d" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[6]))
        
        var postAbortalList1 = [ConditionProgressModel]()
        
        postAbortalList1.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.PostAbortalSurgical ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[0]))
        postAbortalList1.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.PostAbortalSurgical ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        postAbortalList1.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.PostAbortalSurgical ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[2]))
        postAbortalList1.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.PostAbortalSurgical ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[3]))
        postAbortalList1.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.PostAbortalSurgical ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[4]))
        postAbortalList1.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.ProgressVal39_6r7 ,progressValueF:1 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.PostAbortalSurgical ,icon:"ic_1_w" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[5]))
        postAbortalList1.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.ProgressVal39_6r7 ,progressValueF:1 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.PostAbortalSurgical ,icon:"ic_1_w" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[6]))
        
        
        eConditionsList.append(ConditionsModel(conditionTitle:EligibilityList.conditionTitle40_1 ,subViewType:2 ,content:"" ,checkBoxContent:EligibilityList.checkboxContent40_1 ,checkBoxContent2:EligibilityList.checkboxContent40_2 ,age:EligibilityList.num0 ,list:postAbortalList ,isArrow:true ,list1:postAbortalList1))
        
        
        
        var postpartumBreastfeedingList = [ConditionProgressModel]()
        
        postpartumBreastfeedingList.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num4 ,progressValueF:4 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.PostpartumBreastfeedingLess48 ,icon:"ic_4" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[0]))
        postpartumBreastfeedingList.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.PostpartumBreastfeedingLess48 ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        postpartumBreastfeedingList.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.PostpartumBreastfeedingLess48 ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[2]))
        postpartumBreastfeedingList.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.num3 ,progressValueF:3 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.PostpartumBreastfeedingLess48 ,icon:"ic_3" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[3]))
        postpartumBreastfeedingList.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.PostpartumBreastfeedingLess48 ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[4]))
        postpartumBreastfeedingList.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.ProgressVal41_6 ,progressValueF:2 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.PostpartumBreastfeedingLess48 ,icon:"ic_2_v" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[5]))
        postpartumBreastfeedingList.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.ProgressVal41_7 ,progressValueF:1 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.PostpartumBreastfeedingLess48 ,icon:"ic_2_v" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[6]))
        
        var postpartumBreastfeedingList1 = [ConditionProgressModel]()
        
        postpartumBreastfeedingList1.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num4 ,progressValueF:4 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.PostpartumBreastfeeding48hrs6 ,icon:"ic_4" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[0]))
        postpartumBreastfeedingList1.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.PostpartumBreastfeeding48hrs6 ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        postpartumBreastfeedingList1.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.PostpartumBreastfeeding48hrs6 ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[2]))
        postpartumBreastfeedingList1.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.num3 ,progressValueF:3 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.PostpartumBreastfeeding48hrs6 ,icon:"ic_3" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[3]))
        postpartumBreastfeedingList1.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.PostpartumBreastfeeding48hrs6 ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[4]))
        postpartumBreastfeedingList1.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.num3 ,progressValueF:3 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.PostpartumBreastfeeding48hrs6 ,icon:"ic_3" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[5]))
        postpartumBreastfeedingList1.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.num3 ,progressValueF:3 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.PostpartumBreastfeeding48hrs6 ,icon:"ic_3" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[6]))
        
        
        var postpartumBreastfeedingList2 = [ConditionProgressModel]()
        
        postpartumBreastfeedingList2.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num3 ,progressValueF:3 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.PostpartumBreastfeeding6weeks6 ,icon:"ic_3" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[0]))
        postpartumBreastfeedingList2.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.PostpartumBreastfeeding6weeks6 ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        postpartumBreastfeedingList2.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.PostpartumBreastfeeding6weeks6 ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[2]))
        postpartumBreastfeedingList2.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.PostpartumBreastfeeding6weeks6 ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[3]))
        postpartumBreastfeedingList2.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.PostpartumBreastfeeding6weeks6 ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[4]))
        postpartumBreastfeedingList2.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.PostpartumBreastfeeding6weeks6 ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[5]))
        postpartumBreastfeedingList2.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.PostpartumBreastfeeding6weeks6 ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[6]))
        
        
        eConditionsList.append(ConditionsModel(conditionTitle:EligibilityList.conditionTitle44_1 ,subViewType:2 ,content:"" ,checkBoxContent:EligibilityList.checkboxContent44_1 ,checkBoxContent2:EligibilityList.checkboxContent44_2  ,age:EligibilityList.num0 ,list:postpartumBreastfeedingList ,isArrow:true ,list1:postpartumBreastfeedingList1, list2: postpartumBreastfeedingList2,checkBoxContent3: EligibilityList.checkboxContent44_3))
        
        
        
        
        
        var previousLSCSList = [ConditionProgressModel]()
        
        previousLSCSList.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.PreviousLSCS ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[0]))
        previousLSCSList.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.PreviousLSCS ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        previousLSCSList.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.PreviousLSCS ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[2]))
        previousLSCSList.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.PreviousLSCS ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[3]))
        previousLSCSList.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.PreviousLSCS ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[4]))
        previousLSCSList.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.PreviousLSCS ,icon:"ic_2 " ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[5]))
        previousLSCSList.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.PreviousLSCS ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[6]))
        
        
        eConditionsList.append(ConditionsModel(conditionTitle:EligibilityList.PreviousLSCS ,subViewType:3 ,content:EligibilityList.PreviousLSCS ,checkBoxContent:"" ,checkBoxContent2:"" ,age:EligibilityList.num0 ,list:previousLSCSList ,isArrow:false ,list1:[]))
        
        
        
        
        var SepsisList = [ConditionProgressModel]()
        
        SepsisList.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.SepsisPuerperalpostabortal ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[0]))
        SepsisList.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.SepsisPuerperalpostabortal ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        SepsisList.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.SepsisPuerperalpostabortal ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[2]))
        SepsisList.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.SepsisPuerperalpostabortal ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[3]))
        SepsisList.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.SepsisPuerperalpostabortal ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[4]))
        SepsisList.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.num4 ,progressValueF:4 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.SepsisPuerperalpostabortal ,icon:"ic_4 " ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[5]))
        SepsisList.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.num4 ,progressValueF:4 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.SepsisPuerperalpostabortal ,icon:"ic_4" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[6]))
        
        
        eConditionsList.append(ConditionsModel(conditionTitle:EligibilityList.SepsisPuerperalpostabortal ,subViewType:3 ,content:EligibilityList.SepsisPuerperalpostabortal ,checkBoxContent:"" ,checkBoxContent2:"" ,age:EligibilityList.num0 ,list:SepsisList ,isArrow:false ,list1:[]))
        
        
        
        
        var SLEList = [ConditionProgressModel]()
        
        SLEList.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num4 ,progressValueF:4 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.SLE ,icon:"ic_4" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[0]))
        SLEList.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num3 ,progressValueF:3 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.SLE ,icon:"ic_3" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        SLEList.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num3 ,progressValueF:3 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.SLE ,icon:"ic_3" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[2]))
        SLEList.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.num3 ,progressValueF:3 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.SLE ,icon:"ic_3" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[3]))
        SLEList.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num3 ,progressValueF:3 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.SLE ,icon:"ic_3" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[4]))
        SLEList.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.num3 ,progressValueF:3 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.SLE ,icon:"ic_3 " ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[5]))
        SLEList.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.SLE ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[6]))
        
        
        eConditionsList.append(ConditionsModel(conditionTitle:EligibilityList.SLE ,subViewType:3 ,content:EligibilityList.SLE ,checkBoxContent:"" ,checkBoxContent2:"" ,age:EligibilityList.num0 ,list:SLEList ,isArrow:false ,list1:[]))
        
        
        
        
        var SmokingList = [ConditionProgressModel]()
        
        SmokingList.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.ProgressVal49_1 ,progressValueF:3 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.Smoking ,icon:"ic_3_m" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[0]))
        SmokingList.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.Smoking ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        SmokingList.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.Smoking ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[2]))
        SmokingList.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.Smoking ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[3]))
        SmokingList.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.Smoking ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[4]))
        SmokingList.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.Smoking ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[5]))
        SmokingList.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.Smoking ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[6]))
        
        
        eConditionsList.append(ConditionsModel(conditionTitle:EligibilityList.Smoking ,subViewType:3 ,content:EligibilityList.Smoking ,checkBoxContent:"" ,checkBoxContent2:"" ,age:EligibilityList.num0 ,list:SmokingList ,isArrow:false ,list1:[]))
        
        
        
        
        var STIsTIsFList = [ConditionProgressModel]()
        
        STIsTIsFList.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.Purulentdischarge ,icon:"ic_1" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[0]))
        STIsTIsFList.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.Purulentdischarge ,icon:"ic_1" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[1]))
        STIsTIsFList.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.Purulentdischarge ,icon:"ic_1" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[2]))
        STIsTIsFList.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.Purulentdischarge ,icon:"ic_1" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[3]))
        STIsTIsFList.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.Purulentdischarge ,icon:"ic_1" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[4]))
        STIsTIsFList.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.ProgressVal51_6r7 ,progressValueF:4 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.Purulentdischarge ,icon:"ic_4" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[5]))
        STIsTIsFList.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.ProgressVal51_6r7 ,progressValueF:4 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.Purulentdischarge ,icon:"ic_4" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[6]))
        
        var STIsTIsFList1 = [ConditionProgressModel]()
        
        STIsTIsFList1.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.NonPurulentdischarge ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[0]))
        STIsTIsFList1.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.NonPurulentdischarge ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        STIsTIsFList1.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.NonPurulentdischarge ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[2]))
        STIsTIsFList1.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.NonPurulentdischarge ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[3]))
        STIsTIsFList1.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num1 ,progressValueF:1 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.NonPurulentdischarge ,icon:"ic_1" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[4]))
        STIsTIsFList1.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.NonPurulentdischarge ,icon:"ic_2" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[5]))
        STIsTIsFList1.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.NonPurulentdischarge ,icon:"ic_2" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[6]))
        
        
        eConditionsList.append(ConditionsModel(conditionTitle:EligibilityList.conditionTitle53_1 ,subViewType:2 ,content:"" ,checkBoxContent:EligibilityList.checkboxContent53_1 ,checkBoxContent2:EligibilityList.checkboxContent53_2 ,age:EligibilityList.num0 ,list:STIsTIsFList ,isArrow:true ,list1:STIsTIsFList1))
        
        
        
        var TBList = [ConditionProgressModel]()
        
        TBList.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.ProgressVal54_1 ,progressValueF:23 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.TBOnRifampicinRifabutin ,icon:"ic_2_3_i" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[0]))
        TBList.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.TBOnRifampicinRifabutin ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        TBList.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num3 ,progressValueF:3 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.TBOnRifampicinRifabutin ,icon:"ic_3" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[2]))
        TBList.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.ProgressVal54_4 ,progressValueF:12 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.TBOnRifampicinRifabutin ,icon:"ic_1_2_j" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[3]))
        TBList.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.TBOnRifampicinRifabutin ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[4]))
        TBList.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.ProgressVal54_6r7 ,progressValueF:1 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.TBOnRifampicinRifabutin ,icon:"ic_1_k" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[5]))
        TBList.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.ProgressVal54_6r7 ,progressValueF:1 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.TBOnRifampicinRifabutin ,icon:"ic_1_k" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[6]))
        
        
        eConditionsList.append(ConditionsModel(conditionTitle:EligibilityList.TBOnRifampicinRifabutin ,subViewType:3 ,content:EligibilityList.TBOnRifampicinRifabutin ,checkBoxContent:"" ,checkBoxContent2:"" ,age:EligibilityList.num0 ,list:TBList ,isArrow:false ,list1:[]))
        
        
        
        
        
        var unexplainedVaginalBleedingList = [ConditionProgressModel]()
        
        unexplainedVaginalBleedingList.append(ConditionProgressModel(progressTitle:EligibilityList.chc ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.combinedPill ,desc:EligibilityList.UnexplainedVaginalBleeding ,icon:"ic_2" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[0]))
        unexplainedVaginalBleedingList.append(ConditionProgressModel(progressTitle:EligibilityList.cent ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.centchromanPills ,desc:EligibilityList.UnexplainedVaginalBleeding ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[1]))
        unexplainedVaginalBleedingList.append(ConditionProgressModel(progressTitle:EligibilityList.pop ,progressValS:EligibilityList.num2 ,progressValueF:2 ,subTitle:EligibilityList.progestogenPills ,desc:EligibilityList.UnexplainedVaginalBleeding ,icon:"ic_2" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[2]))
        unexplainedVaginalBleedingList.append(ConditionProgressModel(progressTitle:EligibilityList.dmpaNet ,progressValS:EligibilityList.num3 ,progressValueF:3 ,subTitle:EligibilityList.progestogenInjectables ,desc:EligibilityList.UnexplainedVaginalBleeding ,icon:"ic_3" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[3]))
        unexplainedVaginalBleedingList.append(ConditionProgressModel(progressTitle:EligibilityList.lngEtg ,progressValS:EligibilityList.num3 ,progressValueF:3 ,subTitle:EligibilityList.Implants ,desc:EligibilityList.UnexplainedVaginalBleeding ,icon:"ic_3" ,isHTML:false ,contraceptualChoicesModel: contraceptiveList[4]))
        unexplainedVaginalBleedingList.append(ConditionProgressModel(progressTitle:EligibilityList.lngIud ,progressValS:EligibilityList.num4 ,progressValueF:4 ,subTitle:EligibilityList.levonorgestrelIUD ,desc:EligibilityList.UnexplainedVaginalBleeding ,icon:"ic_4" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[5]))
        unexplainedVaginalBleedingList.append(ConditionProgressModel(progressTitle:EligibilityList.cuIucd ,progressValS:EligibilityList.num4 ,progressValueF:4 ,subTitle:EligibilityList.copperIntrauterineDevice ,desc:EligibilityList.UnexplainedVaginalBleeding ,icon:"ic_4" ,isHTML:true ,contraceptualChoicesModel: contraceptiveList[6]))
        
        
        eConditionsList.append(ConditionsModel(conditionTitle:EligibilityList.UnexplainedVaginalBleeding ,subViewType:3 ,content:EligibilityList.UnexplainedVaginalBleeding ,checkBoxContent:"" ,checkBoxContent2:"" ,age:EligibilityList.num0 ,list:unexplainedVaginalBleedingList ,isArrow:false ,list1:[]))
        
        
        //Eligibility Conditions End
        
        var navigationListModelsList = [NavigationListModel]()
        var navigationSubListModelList = [NavigationSubListModel]()
        
        
        navigationSubListModelList.append(NavigationSubListModel(subListTitle: NavigationList.SubListTitle1 ,subListId: 1))
        navigationSubListModelList.append(NavigationSubListModel(subListTitle: NavigationList.SubListTitle2 ,subListId: 2))
        
        navigationListModelsList.append(NavigationListModel(title:NavigationList.Title3
                                                            ,id:0 ,list:navigationSubListModelList ,icon:"ic_mask_grp"))
        navigationListModelsList.append(NavigationListModel(title:NavigationList.Title4
                                                            ,id:1 ,list:[] ,icon:"ic_eligibility_tool"))
        navigationListModelsList.append(NavigationListModel(title:NavigationList.Title5
                                                            ,id:2 ,list:[] ,icon:"ic_conceptive_choice"))
        navigationListModelsList.append(NavigationListModel(title:NavigationList.Title6
                                                            ,id:3 ,list:[] ,icon:"ic_conditions"))
        navigationListModelsList.append(NavigationListModel(title:NavigationList.Title7
                                                            ,id:4 ,list:[] ,icon:"ic_additional_info"))
        navigationListModelsList.append(NavigationListModel(title:NavigationList.Title8
                                                            ,id:1 ,list:[] ,icon:"ic_feedback"))
        
        
        
        
        var additionalInfoModel = [AdditionalInfoModel]()
        var additionalSubPoint = [AdditionalSubPoint]()
        var informationSubPointList = [SubPointList]()
        
        
        informationSubPointList.append(SubPointList(points: InformationList.Points1 ,value: InformationList.Value1))
        informationSubPointList.append(SubPointList(points: InformationList.Points2 ,value: InformationList.Value2))
        informationSubPointList.append(SubPointList(points: InformationList.Points3 ,value: InformationList.Value3))
        informationSubPointList.append(SubPointList(points: InformationList.Points4 ,value: InformationList.Value4))
        informationSubPointList.append(SubPointList(points: InformationList.Points5 ,value: InformationList.Value5))
        informationSubPointList.append(SubPointList(points: InformationList.Points6 ,value: InformationList.Value6))
        informationSubPointList.append(SubPointList(points: InformationList.Points7 ,value: InformationList.Value7))
        informationSubPointList.append(SubPointList(points: InformationList.Points8 ,value: InformationList.Value8))
        informationSubPointList.append(SubPointList(points: InformationList.Points9 ,value: InformationList.Value9))
        informationSubPointList.append(SubPointList(points: InformationList.Points10 ,value: InformationList.Value10))
        
        additionalSubPoint.append(AdditionalSubPoint(additionSubPoint: InformationList.additionSubPoint11 ,additionSubPointName: InformationList.AdditionSubPointName11 ,list:informationSubPointList))
        additionalSubPoint.append(AdditionalSubPoint(additionSubPoint: InformationList.additionSubPoint12 ,additionSubPointName: InformationList.AdditionSubPointName12 ,list:informationSubPointList))
        
        
        
        var informationUpaPoint = [SubPointList]()
        
        
        informationUpaPoint.append(SubPointList(points: InformationList.Points13 ,value: InformationList.Value13))
        informationUpaPoint.append(SubPointList(points: InformationList.Points14 ,value: InformationList.Value14))
        informationUpaPoint.append(SubPointList(points: InformationList.Points15 ,value: InformationList.Value15))
        informationUpaPoint.append(SubPointList(points: InformationList.Points16 ,value: InformationList.Value16))
        informationUpaPoint.append(SubPointList(points: InformationList.Points17 ,value: InformationList.Value17))
        informationUpaPoint.append(SubPointList(points: InformationList.Points18 ,value: InformationList.Value18))
        informationUpaPoint.append(SubPointList(points: InformationList.Points19 ,value: InformationList.Value19))
        informationUpaPoint.append(SubPointList(points: InformationList.Points20 ,value: InformationList.Value20))
        informationUpaPoint.append(SubPointList(points: InformationList.Points21 ,value: InformationList.Value21))
        informationUpaPoint.append(SubPointList(points: InformationList.Points22 ,value: InformationList.Value22))
        
        additionalSubPoint.append(AdditionalSubPoint(additionSubPoint: InformationList.additionSubPoint23 ,additionSubPointName: InformationList.AdditionSubPointName23 ,list:informationUpaPoint))
        
        
        
        var informationsubPointList1 = [SubPointList]()
        
        
        informationsubPointList1.append(SubPointList(points: AdditionalInfoString.detailDesPoint4_1_1 + "\n\n" + AdditionalInfoString.detailDesPoint4_1_2,value: InformationList.Value24))
        informationsubPointList1.append(SubPointList(points: InformationList.Points25 ,value: InformationList.Value25))
        informationsubPointList1.append(SubPointList(points: InformationList.Points26 ,value: InformationList.Value26))
        informationsubPointList1.append(SubPointList(points: InformationList.Points27 ,value: InformationList.Value27))
        
        
        additionalSubPoint.append(AdditionalSubPoint(additionSubPoint: InformationList.additionSubPoint28 ,additionSubPointName: InformationList.AdditionSubPointName28 ,list:informationsubPointList1))
        
        
        
        additionalInfoModel.append(AdditionalInfoModel(additionalContent:InformationList.additionContent29 ,additionalTitle:InformationList.AdditionalTitle30 ,additionalSubPoint:additionalSubPoint))
        
        additionalInfoModel.append(AdditionalInfoModel(additionalContent:InformationList.str31 ,additionalTitle:InformationList.AdditionalTitle32 ,additionalSubPoint:[]))
        
        
        
        
        
        var additionalSubPoint2 = [AdditionalSubPoint]()
        var subPointList2 = [SubPointList]()
        
        subPointList2.append(SubPointList(points: InformationList.Points33 ,value: InformationList.Value33))
        subPointList2.append(SubPointList(points: InformationList.Points34 ,value: InformationList.Value34))
        subPointList2.append(SubPointList(points: InformationList.Points35 ,value: InformationList.Value35))
        subPointList2.append(SubPointList(points: InformationList.Points36 ,value: InformationList.Value36))
        subPointList2.append(SubPointList(points: InformationList.Points37 ,value: InformationList.Value37))
        subPointList2.append(SubPointList(points: InformationList.Points38 ,value: InformationList.Value38))
        subPointList2.append(SubPointList(points: InformationList.Points39 ,value: InformationList.Value39))
        
        additionalSubPoint2.append(AdditionalSubPoint(additionSubPoint: InformationList.additionSubPoint40 ,additionSubPointName: "" ,list:subPointList2))
        
        
        var subPointList3 = [SubPointList]()
        
        subPointList3.append(SubPointList(points: InformationList.Points41 ,value: InformationList.Value41))
        subPointList3.append(SubPointList(points: InformationList.Points42 ,value: InformationList.Value42))
        subPointList3.append(SubPointList(points: InformationList.Points43 ,value: InformationList.Value43))
        subPointList3.append(SubPointList(points: InformationList.Points44 ,value: InformationList.Value44))
        
        additionalSubPoint2.append(AdditionalSubPoint(additionSubPoint: InformationList.additionSubPoint45 ,additionSubPointName: "" ,list:subPointList3))
        
        
        
        var subPointList4 = [SubPointList]()
        
        subPointList4.append(SubPointList(points: InformationList.Points46 ,value: InformationList.Value46))
        subPointList4.append(SubPointList(points: InformationList.Points47 ,value: InformationList.Value47))
        subPointList4.append(SubPointList(points: InformationList.Points48 ,value: InformationList.Value48))
        subPointList4.append(SubPointList(points: InformationList.Points49 ,value: InformationList.Value49))
        
        additionalSubPoint2.append(AdditionalSubPoint(additionSubPoint: InformationList.additionSubPoint50 ,additionSubPointName: "" ,list:subPointList4))
        
        
        var subPointList5 = [SubPointList]()
        
        subPointList5.append(SubPointList(points: InformationList.Points51 ,value: InformationList.Value51))
        
        additionalSubPoint2.append(AdditionalSubPoint(additionSubPoint: InformationList.additionSubPoint52 ,additionSubPointName: "" ,list:subPointList5))
        
        
        additionalInfoModel.append(AdditionalInfoModel(additionalContent:InformationList.additionalContent53 ,additionalTitle:InformationList.additionalTitle53 ,additionalSubPoint:additionalSubPoint2))
        
        
        
        
        
        
        var additionalSubPointCond = [AdditionalSubPointCond]()
        var noteModelList = [SubPointListCond]()
        
        noteModelList.append(SubPointListCond(points:ConditionList.Points1))
        noteModelList.append(SubPointListCond(points:ConditionList.Points2))
        noteModelList.append(SubPointListCond(points:ConditionList.Points3))
        noteModelList.append(SubPointListCond(points:ConditionList.Points4))
        noteModelList.append(SubPointListCond(points:ConditionList.Points5))
        noteModelList.append(SubPointListCond(points:ConditionList.Points6))
        noteModelList.append(SubPointListCond(points:ConditionList.Points7))
        noteModelList.append(SubPointListCond(points:ConditionList.Points8))
        noteModelList.append(SubPointListCond(points:ConditionList.Points9))
        noteModelList.append(SubPointListCond(points:ConditionList.Points10))
        noteModelList.append(SubPointListCond(points:ConditionList.Points11))
        
        additionalSubPointCond.append(AdditionalSubPointCond(img: "ic_reproductive_conditions" ,additionSubPoint: ConditionList.additionSubPoint13 ,subPointCond:noteModelList))
        
        
        
        var medicalConditionSubList = [SubPointListCond]()
        
        medicalConditionSubList.append(SubPointListCond(points:ConditionList.Points14))
        medicalConditionSubList.append(SubPointListCond(points:ConditionList.Points15))
        medicalConditionSubList.append(SubPointListCond(points:ConditionList.Points16))
        medicalConditionSubList.append(SubPointListCond(points:ConditionList.Points17))
        medicalConditionSubList.append(SubPointListCond(points:ConditionList.Points18))
        medicalConditionSubList.append(SubPointListCond(points:ConditionList.Points19))
        medicalConditionSubList.append(SubPointListCond(points:ConditionList.Points20))
        medicalConditionSubList.append(SubPointListCond(points:ConditionList.Points21))
        medicalConditionSubList.append(SubPointListCond(points:ConditionList.Points22))
        medicalConditionSubList.append(SubPointListCond(points:ConditionList.Points23))
        medicalConditionSubList.append(SubPointListCond(points:ConditionList.Points24))
        
        additionalSubPointCond.append(AdditionalSubPointCond(img: "ic_medical_condition" ,additionSubPoint: ConditionList.additionSubPoint26 ,subPointCond:medicalConditionSubList))
        
        
        
        
        var othersSubList = [SubPointListCond]()
        
        othersSubList.append(SubPointListCond(points:ConditionList.Points27))
        othersSubList.append(SubPointListCond(points:ConditionList.Points28))
        othersSubList.append(SubPointListCond(points:ConditionList.Points29))
        othersSubList.append(SubPointListCond(points:ConditionList.Points30))
        othersSubList.append(SubPointListCond(points:ConditionList.Points31))
        othersSubList.append(SubPointListCond(points:ConditionList.Points32))
        
        additionalSubPointCond.append(AdditionalSubPointCond(img: "ic_others" ,additionSubPoint: ConditionList.additionalSubPoint34 ,subPointCond:othersSubList))
        
        
        var ecpillList = [SubPointListCond]()
        
        ecpillList.append(SubPointListCond(points:ConditionList.Points35))
        
        additionalSubPointCond.append(AdditionalSubPointCond(img: "ic_ecpill" ,additionSubPoint: ConditionList.additionSubPoint37,points: "\n"+ConditionList.ecpill36 ,subPointCond:ecpillList))
        
        
        
        var conditionList = [ConditionModel]()
        
        conditionList.append(ConditionModel(additionalContent: ConditionList.additionalContent38, additionalSubPointCond:additionalSubPointCond))
        conditionList.append(ConditionModel(additionalContent: ConditionList.additionalContent39, additionalSubPointCond:[]))
        
        
                
        ePreferencesList.append(PreferencesModel(icon:PreferencesList.icon1, title:PreferencesList.title1, content:PreferencesList.content1))
        ePreferencesList.append(PreferencesModel(icon:PreferencesList.icon2, title:PreferencesList.title2, content:PreferencesList.content2))
        ePreferencesList.append(PreferencesModel(icon:PreferencesList.icon3, title:PreferencesList.title3, content:PreferencesList.content3))
        ePreferencesList.append(PreferencesModel(icon:PreferencesList.icon4, title:PreferencesList.title4, content:PreferencesList.content4))
        ePreferencesList.append(PreferencesModel(icon:PreferencesList.icon5, title:PreferencesList.title5, content:PreferencesList.content5))
        ePreferencesList.append(PreferencesModel(icon:PreferencesList.icon6, title:PreferencesList.title6, content:PreferencesList.content6))
        ePreferencesList.append(PreferencesModel(icon:PreferencesList.icon7, title:PreferencesList.title7, content:PreferencesList.content7))
        
        
        
        informationList.append(InformationModel(progressVal: 1,text:InformationProgressList.text1))
        informationList.append(InformationModel(progressVal: 2,text:InformationProgressList.text2))
        informationList.append(InformationModel(progressVal: 3,text:InformationProgressList.text3))
        informationList.append(InformationModel(progressVal: 4,text:InformationProgressList.text4))
        
        
        
        var noteModel = [NoteModel]()
        
        noteModel.append(NoteModel(aplhabet:Alphabet.a, point:ConditionsListString.noteDesc_a))
        noteModel.append(NoteModel(aplhabet:Alphabet.b, point:ConditionsListString.noteDesc_b))
        noteModel.append(NoteModel(aplhabet:Alphabet.c, point:ConditionsListString.noteDesc_c))
        noteModel.append(NoteModel(aplhabet:Alphabet.d, point:ConditionsListString.noteDesc_d))
        noteModel.append(NoteModel(aplhabet:Alphabet.e, point:ConditionsListString.noteDesc_e))
        noteModel.append(NoteModel(aplhabet:Alphabet.f, point:ConditionsListString.noteDesc_f))
        noteModel.append(NoteModel(aplhabet:Alphabet.g, point:ConditionsListString.noteDesc_g))
        noteModel.append(NoteModel(aplhabet:Alphabet.h, point:ConditionsListString.noteDesc_h))
        noteModel.append(NoteModel(aplhabet:Alphabet.i, point:ConditionsListString.noteDesc_i))
        noteModel.append(NoteModel(aplhabet:Alphabet.j, point:ConditionsListString.noteDesc_j))
        noteModel.append(NoteModel(aplhabet:Alphabet.k, point:ConditionsListString.noteDesc_k))
        noteModel.append(NoteModel(aplhabet:Alphabet.l, point:ConditionsListString.noteDesc_l))
        noteModel.append(NoteModel(aplhabet:Alphabet.m, point:ConditionsListString.noteDesc_m))
        noteModel.append(NoteModel(aplhabet:Alphabet.n, point:ConditionsListString.noteDesc_n))
        noteModel.append(NoteModel(aplhabet:Alphabet.o, point:ConditionsListString.noteDesc_o))
        noteModel.append(NoteModel(aplhabet:Alphabet.p, point:ConditionsListString.noteDesc_p))
        noteModel.append(NoteModel(aplhabet:Alphabet.q, point:ConditionsListString.noteDesc_q))
        noteModel.append(NoteModel(aplhabet:Alphabet.r, point:ConditionsListString.noteDesc_r))
        noteModel.append(NoteModel(aplhabet:Alphabet.s, point:ConditionsListString.noteDesc_s))
        noteModel.append(NoteModel(aplhabet:Alphabet.t, point:ConditionsListString.noteDesc_t))
        noteModel.append(NoteModel(aplhabet:Alphabet.u, point:ConditionsListString.noteDesc_u))
        noteModel.append(NoteModel(aplhabet:Alphabet.v, point:ConditionsListString.noteDesc_v))
        noteModel.append(NoteModel(aplhabet:Alphabet.w, point:ConditionsListString.noteDesc_w))
        noteModel.append(NoteModel(aplhabet:Alphabet.x, point:ConditionsListString.noteDesc_x))
        noteModel.append(NoteModel(aplhabet:Alphabet.y, point:ConditionsListString.noteDesc_y))
        noteModel.append(NoteModel(aplhabet:Alphabet.z, point:ConditionsListString.noteDesc_z))
        
        
    //    var effectivenessModel = [EffectivenessModel]()
    //
    //    effectivenessModel.append(EffectivenessModel(image1: "ic_implants_1", imagePerc1: effectiveNessOfMethod.imagePerc1_1,imageTitle1:effectiveNessOfMethod.imageTitle1_1, image2: "ic_female_sterialization_1", imagePerc2: effectiveNessOfMethod.imagePerc2_1, imageTitle2: effectiveNessOfMethod.imageTitle2_1, image3:"ic_iud_1", imagePerc3:effectiveNessOfMethod.imagePerc3_1, imageTitle3 = effectiveNessOfMethod.imageTitle3_1, image4:"ic_vascetomy",imagePerc4: effectiveNessOfMethod.imagePerc4_1, imageTitle4:effectiveNessOfMethod.imageTitle4_1,content1: effectiveNessOfMethod.content1))
        
    }

}
