import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean

structure MechanicalTestingPackage where
  tensileTestData : Type u
  yieldStrength : Prop
  ultimateTensileStrength : Prop
  ductility : Prop
  hardness : Prop

structure MechanicalTestingEvidence (M : MechanicalTestingPackage) where
  yieldStrengthClosed : M.yieldStrength
  ultimateTensileStrengthClosed : M.ultimateTensileStrength
  ductilityClosed : M.ductility
  hardnessClosed : M.hardness

def MechanicalTestingClosed (M : MechanicalTestingPackage) : Prop :=
  M.yieldStrength ∧ M.ultimateTensileStrength ∧ M.ductility ∧ M.hardness

theorem mechanical_testing_closed_from_evidence (M : MechanicalTestingPackage) (E : MechanicalTestingEvidence M) :
    MechanicalTestingClosed M := by
  exact And.intro E.yieldStrengthClosed
    (And.intro E.ultimateTensileStrengthClosed
      (And.intro E.ductilityClosed E.hardnessClosed))

end MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean
end HautevilleHouse