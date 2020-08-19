DefinitionBlock ("", "SSDT", 2, "AADT", "SsdtEC", 0x00001000)
{
    
    External (_SB_.PCI0.LPCB.H_EC, DeviceObj)

    Scope (\_SB.PCI0.LPCB.H_EC)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (0)
            }
            Else
            {
                Return (0x0F)
            }
        }
    }

    External (_SB_.PCI0.LPCB, DeviceObj)
    
    Scope (\_SB.PCI0.LPCB)
    {
        Device (EC)
        {
            Name (_HID, "ACID0001")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (0)
                }
            }
        }
    }
}
