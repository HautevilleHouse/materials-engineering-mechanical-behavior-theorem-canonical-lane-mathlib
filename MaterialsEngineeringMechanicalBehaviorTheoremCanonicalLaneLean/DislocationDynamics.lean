import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean

structure DislocationDynamicsPackage where
  dislocationDensityEvolution : Prop
  glideClimbInteraction : Prop
  junctionFormation : Prop
  strainHardeningRelation : Prop
  internalStressField : Prop

structure DislocationDynamicsEvidence (D : DislocationDynamicsPackage) where
  dislocationDensityEvolutionClosed : D.dislocationDensityEvolution
  glideClimbInteractionClosed : D.glideClimbInteraction
  junctionFormationClosed : D.junctionFormation
  strainHardeningRelationClosed : D.strainHardeningRelation
  internalStressFieldClosed : D.internalStressField

def DislocationDynamicsClosed (D : DislocationDynamicsPackage) : Prop :=
  D.dislocationDensityEvolution ∧ D.glideClimbInteraction ∧
  D.junctionFormation ∧ D.strainHardeningRelation ∧ D.internalStressField

theorem dislocation_dynamics_closed_from_evidence (D : DislocationDynamicsPackage)
    (E : DislocationDynamicsEvidence D) : DislocationDynamicsClosed D := by
  exact And.intro E.dislocationDensityEvolutionClosed
    (And.intro E.glideClimbInteractionClosed
      (And.intro E.junctionFormationClosed
        (And.intro E.strainHardeningRelationClosed E.internalStressFieldClosed)))

end MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean
end HautevilleHouse