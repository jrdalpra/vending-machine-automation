workspace {

    model {
        user = person "Customer"
        vm = softwareSystem "Vending Machine" {
            pos = container "Point of Sale" "Used to buy good from the VM" "Android App" {
                user -> this "buys"
            }
            integrator = container "Integrator" "Integration between VM and PinPad for payments" "blackbox" {
                pos -> this "ask to confirm payment"
            }
            pinpad = container "Payment Equipment" "Equipment used by the user to pay" "blackbox" {
                this -> integrator "confirms the payment"
                user -> this "pay using credit or debit"
            }
        }
    }

    views {
        systemContext vm {
            include *
            autolayout lr
        }

        container vm {
            include *
            autolayout lr
        }

        theme default
    }

}