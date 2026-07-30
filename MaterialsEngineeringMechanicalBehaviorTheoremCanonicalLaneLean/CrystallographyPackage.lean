import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean

structure CrystallographyPackage where
  unitCell : Type u
  bravaisLattice : Type v
  spaceGroup : Type w
  latticeParameters : Prop
  symmetryOperations : Prop
  millerIndices : Prop
  reciprocalLattice : Prop
  braggCondition : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeParametersClosed : C.latticeParameters
  symmetryOperationsClosed : C.symmetryOperations
  millerIndicesClosed : C.millerIndices
  reciprocalLatticeClosed : C.reciprocalLattice
  braggConditionClosed : C.braggCondition

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeParameters ∧ C.symmetryOperations ∧ C.millerIndices ∧ C.reciprocalLattice ∧ C.braggCondition

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.latticeParametersClosed
    (And.intro E.symmetryOperationsClosed
      (And.intro E.millerIndicesClosed
        (And.intro E.reciprocalLatticeClosed E.braggConditionClosed)))

end MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean
end HautevilleHouse