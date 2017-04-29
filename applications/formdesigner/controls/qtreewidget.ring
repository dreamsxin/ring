/*
**	Project : Form Designer 
**	File Purpose :  QTreeWidget Control
**	Date : 2017.04.29
**	Author :  Mahmoud Fayed <msfclipper@yahoo.com>
*/

package formdesigner

class FormDesigner_QTreeWidget from QLineEdit

	CreateCommonAttributes()
	CreateMoveResizeCornersAttributes()

	cColumnCount = "0"
	cHeaderLabels = ""
	nHeaderHidden = 0

	ccollapsedEvent = ""
	cexpandedEvent = ""
	cactivatedEvent = ""
	cclickedEvent = ""
	cdoubleClickedEvent = ""
	centeredEvent = ""
	cpressedEvent = ""
	cviewportEnteredEvent = ""
	ccurrentItemChangedEvent = ""
	citemActivatedEvent = ""
	citemChangedEvent = ""
	citemClickedEvent = ""
	citemCollapsedEvent = ""
	citemDoubleClickedEvent = ""
	citemEnteredEvent = ""
	citemExpandedEvent = ""
	citemPressedEvent = ""
	citemSelectionChangedEvent = ""

	func SetColumnCountValue cValue
		cColumnCount = cValue

	func ColumnCountValue
		return cColumnCount

	func SetHeaderLabelsValue cValue
		cHeaderLabels = cValue

	func HeaderLabelsValue
		return cHeaderLabels

	func HeaderHiddenValue
		return nHeaderHidden

	func SetHeaderHiddenValue Value
		nHeaderHidden = Value

	func SetcollapsedEventCode cValue
		ccollapsedEvent = cValue

	func collapsedEventCode
		return ccollapsedEvent

	func SetexpandedEventCode cValue
		cexpandedEvent = cValue

	func expandedEventCode
		return cexpandedEvent

	func SetactivatedEventCode cValue
		cactivatedEvent = cValue

	func activatedEventCode
		return cactivatedEvent

	func SetclickedEventCode cValue
		cclickedEvent = cValue

	func clickedEventCode
		return cclickedEvent

	func SetdoubleClickedEventCode cValue
		cdoubleClickedEvent = cValue

	func doubleClickedEventCode
		return cdoubleClickedEvent

	func SetenteredEventCode cValue
		centeredEvent = cValue

	func enteredEventCode
		return centeredEvent

	func SetpressedEventCode cValue
		cpressedEvent = cValue

	func pressedEventCode
		return cpressedEvent

	func SetviewportEnteredEventCode cValue
		cviewportEnteredEvent = cValue

	func viewportEnteredEventCode
		return cviewportEnteredEvent

	func SetcurrentItemChangedEventCode cValue
		ccurrentItemChangedEvent = cValue

	func currentItemChangedEventCode
		return ccurrentItemChangedEvent

	func SetitemActivatedEventCode cValue
		citemActivatedEvent = cValue

	func itemActivatedEventCode
		return citemActivatedEvent

	func SetitemChangedEventCode cValue
		citemChangedEvent = cValue

	func itemChangedEventCode
		return citemChangedEvent

	func SetitemClickedEventCode cValue
		citemClickedEvent = cValue

	func itemClickedEventCode
		return citemClickedEvent

	func SetitemCollapsedEventCode cValue
		citemCollapsedEvent = cValue

	func itemCollapsedEventCode
		return citemCollapsedEvent

	func SetitemDoubleClickedEventCode cValue
		citemDoubleClickedEvent = cValue

	func itemDoubleClickedEventCode
		return citemDoubleClickedEvent

	func SetitemEnteredEventCode cValue
		citemEnteredEvent = cValue

	func itemEnteredEventCode
		return citemEnteredEvent

	func SetitemExpandedEventCode cValue
		citemExpandedEvent = cValue

	func itemExpandedEventCode
		return citemExpandedEvent

	func SetitemPressedEventCode cValue
		citemPressedEvent = cValue

	func itemPressedEventCode
		return citemPressedEvent

	func SetitemSelectionChangedEventCode cValue
		citemSelectionChangedEvent = cValue

	func itemSelectionChangedEventCode
		return citemSelectionChangedEvent

	func AddObjectProperties  oDesigner
		AddObjectCommonProperties(oDesigner)
		oDesigner.oView.AddProperty("Column Count",False)
		oDesigner.oView.AddProperty("Header Labels (S: Comma)",False)
		oDesigner.oView.AddPropertyCombobox("Header Hidden",["True","False"])
		oDesigner.oView.AddProperty("collapsedEvent",False)
		oDesigner.oView.AddProperty("expandedEvent",False)
		oDesigner.oView.AddProperty("activatedEvent",False)
		oDesigner.oView.AddProperty("clickedEvent",False)
		oDesigner.oView.AddProperty("doubleClickedEvent",False)
		oDesigner.oView.AddProperty("enteredEvent",False)
		oDesigner.oView.AddProperty("pressedEvent",False)
		oDesigner.oView.AddProperty("viewportEnteredEvent",False)
		oDesigner.oView.AddProperty("currentItemChangedEvent",False)
		oDesigner.oView.AddProperty("itemActivatedEvent",False)
		oDesigner.oView.AddProperty("itemChangedEvent",False)
		oDesigner.oView.AddProperty("itemClickedEvent",False)
		oDesigner.oView.AddProperty("itemCollapsedEvent",False)
		oDesigner.oView.AddProperty("itemDoubleClickedEvent",False)
		oDesigner.oView.AddProperty("itemEnteredEvent",False)
		oDesigner.oView.AddProperty("itemExpandedEvent",False)
		oDesigner.oView.AddProperty("itemPressedEvent",False)
		oDesigner.oView.AddProperty("itemSelectionChangedEvent",False)

	func DisplayProperties oDesigner
		DisplayCommonProperties(oDesigner)
		oPropertiesTable = oDesigner.oView.oPropertiesTable
		oPropertiesTable.Blocksignals(True)
		oPropertiesTable.item(C_AFTERCOMMON,1).settext(ColumnCountValue())
		oPropertiesTable.item(C_AFTERCOMMON+1,1).settext(HeaderLabelsValue())
		# Header Hidden
			oWidget = oPropertiesTable.cellwidget(C_AFTERCOMMON+2,1)
			oCombo = new qCombobox
			oCombo.pObject = oWidget.pObject
			oCombo.BlockSignals(True)
			oCombo.setCurrentIndex(HeaderHiddenValue())
			oCombo.BlockSignals(False)
		oPropertiesTable.item(C_AFTERCOMMON+3,1).settext(collapsedEventcode())
		oPropertiesTable.item(C_AFTERCOMMON+4,1).settext(expandedEventcode())
		oPropertiesTable.item(C_AFTERCOMMON+5,1).settext(activatedEventcode())
		oPropertiesTable.item(C_AFTERCOMMON+6,1).settext(clickedEventcode())
		oPropertiesTable.item(C_AFTERCOMMON+7,1).settext(doubleClickedEventcode())
		oPropertiesTable.item(C_AFTERCOMMON+8,1).settext(enteredEventcode())
		oPropertiesTable.item(C_AFTERCOMMON+9,1).settext(pressedEventcode())
		oPropertiesTable.item(C_AFTERCOMMON+10,1).settext(viewportEnteredEventcode())
		oPropertiesTable.item(C_AFTERCOMMON+11,1).settext(currentItemChangedEventcode())
		oPropertiesTable.item(C_AFTERCOMMON+12,1).settext(itemActivatedEventcode())
		oPropertiesTable.item(C_AFTERCOMMON+13,1).settext(itemChangedEventcode())
		oPropertiesTable.item(C_AFTERCOMMON+14,1).settext(itemClickedEventcode())
		oPropertiesTable.item(C_AFTERCOMMON+15,1).settext(itemCollapsedEventcode())
		oPropertiesTable.item(C_AFTERCOMMON+16,1).settext(itemDoubleClickedEventcode())
		oPropertiesTable.item(C_AFTERCOMMON+17,1).settext(itemEnteredEventcode())
		oPropertiesTable.item(C_AFTERCOMMON+18,1).settext(itemExpandedEventcode())
		oPropertiesTable.item(C_AFTERCOMMON+19,1).settext(itemPressedEventcode())
		oPropertiesTable.item(C_AFTERCOMMON+20,1).settext(itemSelectionChangedEventcode())
		oPropertiesTable.Blocksignals(False)
		# Set the object name
			setText(oDesigner.oModel.GetObjectName(self))

	func UpdateProperties oDesigner,nRow,nCol,cValue
		UpdateCommonProperties(oDesigner,nRow,nCol,cValue)
		if nCol = 1 {
			switch nRow {
				case C_AFTERCOMMON
					setColumnCountValue(cValue)
				case C_AFTERCOMMON+1
					setHeaderLabelsValue(cValue)
				case C_AFTERCOMMON+2
					setHeaderHiddenValue(cValue)
				case C_AFTERCOMMON+3
					setcollapsedEventCode(cValue)
				case C_AFTERCOMMON+4
					setexpandedEventCode(cValue)
				case C_AFTERCOMMON+5
					setactivatedEventCode(cValue)
				case C_AFTERCOMMON+6
					setclickedEventCode(cValue)
				case C_AFTERCOMMON+7
					setdoubleClickedEventCode(cValue)
				case C_AFTERCOMMON+8
					setenteredEventCode(cValue)
				case C_AFTERCOMMON+9
					setpressedEventCode(cValue)
				case C_AFTERCOMMON+10
					setviewportEnteredEventCode(cValue)
				case C_AFTERCOMMON+11
					setcurrentItemChangedEventCode(cValue)
				case C_AFTERCOMMON+12
					setitemActivatedEventCode(cValue)
				case C_AFTERCOMMON+13
					setitemChangedEventCode(cValue)
				case C_AFTERCOMMON+14
					setitemClickedEventCode(cValue)
				case C_AFTERCOMMON+15
					setitemCollapsedEventCode(cValue)
				case C_AFTERCOMMON+16
					setitemDoubleClickedEventCode(cValue)
				case C_AFTERCOMMON+17
					setitemEnteredEventCode(cValue)
				case C_AFTERCOMMON+18
					setitemExpandedEventCode(cValue)
				case C_AFTERCOMMON+19
					setitemPressedEventCode(cValue)
				case C_AFTERCOMMON+20
					setitemSelectionChangedEventCode(cValue)

			}
		}
		# Set the object name
			setText(oDesigner.oModel.GetObjectName(self))

	func ComboItemAction oDesigner,nRow
		nHeaderHiddenPos = C_AFTERCOMMON+2
		if nRow = nHeaderHiddenPos  {
			oWidget = oDesigner.oView.oPropertiesTable.cellwidget(nHeaderHiddenPos,1)
			oCombo = new qCombobox
			oCombo.pObject = oWidget.pObject
			nIndex = oCombo.CurrentIndex()
			setHeaderHiddenValue(nIndex)
		}

	func ObjectDataAsString oDesigner,nTabsCount
		cOutput = ObjectDataAsString2(oDesigner,nTabsCount)
		cTabs = std_copy(char(9),nTabsCount)
		cOutput += "," + nl + cTabs + ' :columncount =  "' + ColumnCountValue() + '"'
		cOutput += "," + nl + cTabs + ' :headerlabels =  "' + HeaderLabelsValue() + '"'
		cOutput += "," + nl + cTabs + ' :HeaderHidden =  ' + HeaderHiddenValue()
		cOutput += "," + nl + cTabs + ' :setcollapsedEvent =  "' + collapsedEventCode() + '"'
		cOutput += "," + nl + cTabs + ' :setexpandedEvent =  "' + expandedEventCode() + '"'
		cOutput += "," + nl + cTabs + ' :setactivatedEvent =  "' + activatedEventCode() + '"'
		cOutput += "," + nl + cTabs + ' :setclickedEvent =  "' + clickedEventCode() + '"'
		cOutput += "," + nl + cTabs + ' :setdoubleClickedEvent =  "' + doubleClickedEventCode() + '"'
		cOutput += "," + nl + cTabs + ' :setenteredEvent =  "' + enteredEventCode() + '"'
		cOutput += "," + nl + cTabs + ' :setpressedEvent =  "' + pressedEventCode() + '"'
		cOutput += "," + nl + cTabs + ' :setviewportEnteredEvent =  "' + viewportEnteredEventCode() + '"'
		cOutput += "," + nl + cTabs + ' :setcurrentItemChangedEvent =  "' + currentItemChangedEventCode() + '"'
		cOutput += "," + nl + cTabs + ' :setitemActivatedEvent =  "' + itemActivatedEventCode() + '"'
		cOutput += "," + nl + cTabs + ' :setitemChangedEvent =  "' + itemChangedEventCode() + '"'
		cOutput += "," + nl + cTabs + ' :setitemClickedEvent =  "' + itemClickedEventCode() + '"'
		cOutput += "," + nl + cTabs + ' :setitemCollapsedEvent =  "' + itemCollapsedEventCode() + '"'
		cOutput += "," + nl + cTabs + ' :setitemDoubleClickedEvent =  "' + itemDoubleClickedEventCode() + '"'
		cOutput += "," + nl + cTabs + ' :setitemEnteredEvent =  "' + itemEnteredEventCode() + '"'
		cOutput += "," + nl + cTabs + ' :setitemExpandedEvent =  "' + itemExpandedEventCode() + '"'
		cOutput += "," + nl + cTabs + ' :setitemPressedEvent =  "' + itemPressedEventCode() + '"'
		cOutput += "," + nl + cTabs + ' :setitemSelectionChangedEvent =  "' + itemSelectionChangedEventCode() + '"'
		return cOutput

	func GenerateCustomCode oDesigner
		cOutput = ""
		cOutput += 'setColumnCount(#{f1})' + nl
		cOutput = substr(cOutput,"#{f1}",ColumnCountValue())
		if HeaderLabelsValue() != NULL {
			cOutput += 'oList = new qstringlist() {' + nl
			aItems = split(HeaderLabelsValue(),",")
			for item in aItems {
				cOutput += char(9) + 'Append("#{f1}")' + nl
				cOutput = substr(cOutput,"#{f1}",Item)
			}
			cOutput += '}' + nl +"setheaderlabels(oList)" + nl
		}
		# Header Hidden
			cOutput += 'setHeaderHidden(#{f1})' + nl
			switch HeaderHiddenValue() {
			case 0
				cOutput = substr(cOutput,"#{f1}","True")
			case 1
				cOutput = substr(cOutput,"#{f1}","False")
			}
		cOutput += 'setcollapsedEvent("#{f1}")' + nl
		cOutput = PrepareEvent(cOutput,collapsedEventCode(),"#{f1}")
		cOutput = substr(cOutput,"#{f1}",collapsedEventCode())
		cOutput += 'setexpandedEvent("#{f1}")' + nl
		cOutput = PrepareEvent(cOutput,expandedEventCode(),"#{f1}")
		cOutput = substr(cOutput,"#{f1}",expandedEventCode())
		cOutput += 'setactivatedEvent("#{f1}")' + nl
		cOutput = PrepareEvent(cOutput,activatedEventCode(),"#{f1}")
		cOutput = substr(cOutput,"#{f1}",activatedEventCode())
		cOutput += 'setclickedEvent("#{f1}")' + nl
		cOutput = PrepareEvent(cOutput,clickedEventCode(),"#{f1}")
		cOutput = substr(cOutput,"#{f1}",clickedEventCode())
		cOutput += 'setdoubleClickedEvent("#{f1}")' + nl
		cOutput = PrepareEvent(cOutput,doubleClickedEventCode(),"#{f1}")
		cOutput = substr(cOutput,"#{f1}",doubleClickedEventCode())
		cOutput += 'setenteredEvent("#{f1}")' + nl
		cOutput = PrepareEvent(cOutput,enteredEventCode(),"#{f1}")
		cOutput = substr(cOutput,"#{f1}",enteredEventCode())
		cOutput += 'setpressedEvent("#{f1}")' + nl
		cOutput = PrepareEvent(cOutput,pressedEventCode(),"#{f1}")
		cOutput = substr(cOutput,"#{f1}",pressedEventCode())
		cOutput += 'setviewportEnteredEvent("#{f1}")' + nl
		cOutput = PrepareEvent(cOutput,viewportEnteredEventCode(),"#{f1}")
		cOutput = substr(cOutput,"#{f1}",viewportEnteredEventCode())
		cOutput += 'setcurrentItemChangedEvent("#{f1}")' + nl
		cOutput = PrepareEvent(cOutput,currentItemChangedEventCode(),"#{f1}")
		cOutput = substr(cOutput,"#{f1}",currentItemChangedEventCode())
		cOutput += 'setitemActivatedEvent("#{f1}")' + nl
		cOutput = PrepareEvent(cOutput,itemActivatedEventCode(),"#{f1}")
		cOutput = substr(cOutput,"#{f1}",itemActivatedEventCode())
		cOutput += 'setitemChangedEvent("#{f1}")' + nl
		cOutput = PrepareEvent(cOutput,itemChangedEventCode(),"#{f1}")
		cOutput = substr(cOutput,"#{f1}",itemChangedEventCode())
		cOutput += 'setitemClickedEvent("#{f1}")' + nl
		cOutput = PrepareEvent(cOutput,itemClickedEventCode(),"#{f1}")
		cOutput = substr(cOutput,"#{f1}",itemClickedEventCode())
		cOutput += 'setitemCollapsedEvent("#{f1}")' + nl
		cOutput = PrepareEvent(cOutput,itemCollapsedEventCode(),"#{f1}")
		cOutput = substr(cOutput,"#{f1}",itemCollapsedEventCode())
		cOutput += 'setitemDoubleClickedEvent("#{f1}")' + nl
		cOutput = PrepareEvent(cOutput,itemDoubleClickedEventCode(),"#{f1}")
		cOutput = substr(cOutput,"#{f1}",itemDoubleClickedEventCode())
		cOutput += 'setitemEnteredEvent("#{f1}")' + nl
		cOutput = PrepareEvent(cOutput,itemEnteredEventCode(),"#{f1}")
		cOutput = substr(cOutput,"#{f1}",itemEnteredEventCode())
		cOutput += 'setitemExpandedEvent("#{f1}")' + nl
		cOutput = PrepareEvent(cOutput,itemExpandedEventCode(),"#{f1}")
		cOutput = substr(cOutput,"#{f1}",itemExpandedEventCode())
		cOutput += 'setitemPressedEvent("#{f1}")' + nl
		cOutput = PrepareEvent(cOutput,itemPressedEventCode(),"#{f1}")
		cOutput = substr(cOutput,"#{f1}",itemPressedEventCode())
		cOutput += 'setitemSelectionChangedEvent("#{f1}")' + nl
		cOutput = PrepareEvent(cOutput,itemSelectionChangedEventCode(),"#{f1}")
		cOutput = substr(cOutput,"#{f1}",itemSelectionChangedEventCode())
		return cOutput

	func RestoreProperties oDesigner,Item
		RestoreCommonProperties(oDesigner,item)
		itemdata = item[:data]
		SetColumnCountValue(itemdata[:columncount])
		SetHeaderLabelsValue(itemdata[:headerlabels])
		SetHeaderHiddenValue(itemdata[:HeaderHidden])
		SetcollapsedEventCode(itemdata[:setcollapsedEvent])
		SetexpandedEventCode(itemdata[:setexpandedEvent])
		SetactivatedEventCode(itemdata[:setactivatedEvent])
		SetclickedEventCode(itemdata[:setclickedEvent])
		SetdoubleClickedEventCode(itemdata[:setdoubleClickedEvent])
		SetenteredEventCode(itemdata[:setenteredEvent])
		SetpressedEventCode(itemdata[:setpressedEvent])
		SetviewportEnteredEventCode(itemdata[:setviewportEnteredEvent])
		SetcurrentItemChangedEventCode(itemdata[:setcurrentItemChangedEvent])
		SetitemActivatedEventCode(itemdata[:setitemActivatedEvent])
		SetitemChangedEventCode(itemdata[:setitemChangedEvent])
		SetitemClickedEventCode(itemdata[:setitemClickedEvent])
		SetitemCollapsedEventCode(itemdata[:setitemCollapsedEvent])
		SetitemDoubleClickedEventCode(itemdata[:setitemDoubleClickedEvent])
		SetitemEnteredEventCode(itemdata[:setitemEnteredEvent])
		SetitemExpandedEventCode(itemdata[:setitemExpandedEvent])
		SetitemPressedEventCode(itemdata[:setitemPressedEvent])
		SetitemSelectionChangedEventCode(itemdata[:setitemSelectionChangedEvent])
