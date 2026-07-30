import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean

structure CrystalPlasticityPackage where
  crystallographicSlipSystems : Prop
  criticalResolvedShearStress : Prop
  hardeningEvolution : Prop
  kinematicCoupling : Prop
  deformationGradientDecomposition : Prop

structure CrystalPlasticityEvidence (C : CrystalPlasticityPackage) where
  crystallographicSlipSystemsClosed : C.crystallographicSlipSystems
  criticalResolvedShearStressClosed : C.criticalResolvedShearStress
  hardeningEvolutionClosed : C.hardeningEvolution
  kinematicCouplingClosed : C.kinematicCoupling
  deformationGradientDecompositionClosed : C.deformationGradientDecomposition

def CrystalPlasticityClosed (C : CrystalPlasticityPackage) : Prop :=
  C.crystallographicSlipSystems ∧ C.criticalResolvedShearStress ∧
  C.hardeningEvolution ∧ C.kinematicCoupling ∧ C.deformationGradientDecomposition

theorem crystal_plasticity_closed_from_evidence (C : CrystalPlasticityPackage)
    (E : CrystalPlasticityEvidence C) : CrystalPlasticityClosed C := by
  exact And.intro E.crystallographicSlipSystemsClosed
    (And.intro E.criticalResolvedShearStressClosed
      (And.intro E.hardeningEvolutionClosed
        (And.intro E.kinematicCouplingClosed E.deformationGradientDecompositionClosed)))

end MaterialsEngineeringMechanicalBehaviorTheoremCanonicalLaneLean
end HautevilleHouse