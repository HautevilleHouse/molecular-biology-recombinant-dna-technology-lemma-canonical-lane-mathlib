import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean

structure CloningVectorPackage where
  originOfReplication : Prop
  multipleCloningSite : Prop
  antibioticResistance : Prop
  reporterGene : Option String

structure CloningVectorEvidence (V : CloningVectorPackage) where
  oriFunctional : V.originOfReplication
  mcsPresent : V.multipleCloningSite
  selectionPresent : V.antibioticResistance

def CloningVectorClosed (V : CloningVectorPackage) : Prop :=
  V.originOfReplication ∧ V.multipleCloningSite ∧ V.antibioticResistance

theorem cloning_vector_closed_from_evidence
    (V : CloningVectorPackage) (E : CloningVectorEvidence V) :
    CloningVectorClosed V := by
  exact And.intro E.oriFunctional (And.intro E.mcsPresent E.selectionPresent)

end MolecularBiologyRecombinantDnaTechnologyLemmaCanonicalLaneLean
end HautevilleHouse