import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean

structure DeformationMechanismsPackage where
  dislocationMotion : Prop
  slipSystems : Prop
  twinning : Prop
  strainHardening : Prop
  creepBehavior : Prop

structure DeformationMechanismsEvidence (D : DeformationMechanismsPackage) where
  dislocationMotionClosed : D.dislocationMotion
  slipSystemsClosed : D.slipSystems
  twinningClosed : D.twinning
  strainHardeningClosed : D.strainHardening
  creepBehaviorClosed : D.creepBehavior

def DeformationMechanismsClosed (D : DeformationMechanismsPackage) : Prop :=
  D.dislocationMotion ∧ D.slipSystems ∧ D.twinning ∧ D.strainHardening ∧ D.creepBehavior

theorem deformation_mechanisms_closed_from_evidence (D : DeformationMechanismsPackage) (E : DeformationMechanismsEvidence D) :
    DeformationMechanismsClosed D := by
  exact And.intro E.dislocationMotionClosed
    (And.intro E.slipSystemsClosed
      (And.intro E.twinningClosed
        (And.intro E.strainHardeningClosed E.creepBehaviorClosed)))

end MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean
end HautevilleHouse