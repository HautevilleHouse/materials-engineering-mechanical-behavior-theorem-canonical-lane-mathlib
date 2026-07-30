import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean

structure CrystallographicLattice where
  pointGroup : Type
  bravaisLattice : Type
  symmetryOperations : Type
  latticeParameters : Type
  unitCellVolume : Float
  bravaisClassified : Prop
  symmetryClosed : Prop
  bravaisClassifiedTerm : bravaisClassified
  symmetryClosedTerm : symmetryClosed

structure CrystallographicEvidence (C : CrystallographicLattice) where
  bravaisClassifiedClosed : C.bravaisClassified
  symmetryClosedClosed : C.symmetryClosed

def CrystallographicClosed (C : CrystallographicLattice) : Prop :=
  C.bravaisClassified ∧ C.symmetryClosed

theorem crystallographic_closed_from_evidence (C : CrystallographicLattice)
    (E : CrystallographicEvidence C) : CrystallographicClosed C := by
  exact And.intro E.bravaisClassifiedClosed E.symmetryClosedClosed

end MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean
end HautevilleHouse
