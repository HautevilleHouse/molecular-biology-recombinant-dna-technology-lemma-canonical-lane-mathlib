import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean

structure GelElectrophoresisPackage where
  dnaFragments : Type
  fragmentLengths : List ℕ
  gelApplied : Prop
  voltageApplied : Prop
  separationEfficiency : Prop

structure GelElectrophoresisEvidence (G : GelElectrophoresisPackage) where
  gelAppliedClosed : G.gelApplied
  voltageAppliedClosed : G.voltageApplied
  separationEfficiencyClosed : G.separationEfficiency

def GelElectrophoresisSeparationClosed (G : GelElectrophoresisPackage) : Prop :=
  G.gelApplied ∧ G.voltageApplied ∧ G.separationEfficiency

theorem gel_electrophoresis_closed_from_evidence (G : GelElectrophoresisPackage) (E : GelElectrophoresisEvidence G) :
    GelElectrophoresisSeparationClosed G := by
  exact And.intro E.gelAppliedClosed (And.intro E.voltageAppliedClosed E.separationEfficiencyClosed)

end MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean
end HautevilleHouse
