class ba.calculator.Calculator:

    {constants.i}

    method public integer Add(input pLeft as integer, input pRight as integer):
        return pLeft + pRight.
    end method.

    method public integer Subtract(input pLeft as integer, input pRight as integer):
        return pLeft - pRight.
    end method.

    method public integer Multiply(input pLeft as integer, input pRight as integer):
        return pLeft * pRight.
    end method.

    method public decimal Divide(input pLeft as integer, input pRight as integer):
        if pRight = 0 then
            return ?.
        return pLeft / pRight.
    end method.

    method public integer ScaleByFactor(input pValue as integer):
        return pValue * iScaleFactor.
    end method.

    method public integer Max(input pLeft as integer, input pRight as integer):
        if pLeft > pRight then
            return pLeft.
        return pRight.
    end method.

    method public integer Min(input pLeft as integer, input pRight as integer):
        if pLeft < pRight then
            return pLeft.
        return pRight.
    end method.

    method public logical IsEven(input pValue as integer):
        return pValue modulo 2 = 0.
    end method.

    method public integer Power(input pBase as integer, input pExponent as integer):
        define variable iResult as integer no-undo initial 1.
        define variable iCounter as integer no-undo.

        do iCounter = 1 to pExponent:
            iResult = iResult * pBase.
        end.

        return iResult.
    end method.

    method public integer Clamp(input pValue as integer, input pMin as integer, input pMax as integer):
        if pValue < pMin then
            return pMin.
        if pValue > pMax then
            return pMax.
        return pValue.
    end method.

    /* Cross-package reference: this package depends directly on greeter
       by source (declared in this package's own openedge-project.json's
       "greeter" entry - no registry involved). greeter's own namespace is
       "erudys27.greeter", independent of the bare "greeter" key used to
       declare the dependency. If a consumer only installs ba.calculator
       and oepm doesn't resolve this transitively, erudys27.greeter.Greeter
       won't be on PROPATH and this method won't compile. */
    method public character Describe():
        define variable oGreeter as erudys27.greeter.Greeter no-undo.

        oGreeter = new erudys27.greeter.Greeter().
        return oGreeter:Greet("Calculator").
    end method.

end class.
