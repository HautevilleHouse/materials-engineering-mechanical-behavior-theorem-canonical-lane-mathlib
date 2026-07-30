import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean

structure CrystalStructure where
  latticeType : String
  basisAtoms : Nat
  bravaisLattice : Prop
  primitiveCell : Prop
  symmetryGroup : Type

structure CrystalStructureEvidence (C : CrystalStructure) where
  latticeTypeDefined : C.latticeType = "fcc" ∨ C.latticeType = "bcc" ∨ C.latticeType = "hcp"
  basisAtomsPositive : C.basisAtoms ≥ 1
  bravaisLatticeClosed : C.bravaisLattice
  primitiveCellClosed : C.primitiveCell

def CrystalStructureClosed (C : CrystalStructure) : Prop :=
  C.bravaisLattice ∧ C.primitiveCell

theorem crystal_structure_closed_from_evidence (C : CrystalStructure) (E : CrystalStructureEvidence C) :
    CrystalStructureClosed C := by
  exact And.intro E.bravaisLatticeClosed E.primitiveCellClosed

end MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean
end HautevilleHouse