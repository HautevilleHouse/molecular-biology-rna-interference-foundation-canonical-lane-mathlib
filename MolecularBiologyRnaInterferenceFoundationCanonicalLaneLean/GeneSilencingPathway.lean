import canonicalLaneMathlib.AdmissibleClass

/-!
# Gene Silencing Pathway Package
-/

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean

structure GeneSilencingPathwayPackage where
  transcriptionalSilencing : Prop
  postTranscriptionalSilencing : Prop
  heterochromatinFormation : Prop
  translationalInhibition : Prop

structure GeneSilencingPathwayEvidence (G : GeneSilencingPathwayPackage) where
  transcriptionalSilencingClosed : G.transcriptionalSilencing
  postTranscriptionalSilencingClosed : G.postTranscriptionalSilencing
  heterochromatinFormationClosed : G.heterochromatinFormation
  translationalInhibitionClosed : G.translationalInhibition

def GeneSilencingPathwayClosed (G : GeneSilencingPathwayPackage) : Prop :=
  G.transcriptionalSilencing ∧ G.postTranscriptionalSilencing ∧
  G.heterochromatinFormation ∧ G.translationalInhibition

theorem gene_silencing_pathway_closed_from_evidence
    (G : GeneSilencingPathwayPackage) (E : GeneSilencingPathwayEvidence G) :
    GeneSilencingPathwayClosed G := by
  exact And.intro E.transcriptionalSilencingClosed
    (And.intro E.postTranscriptionalSilencingClosed
      (And.intro E.heterochromatinFormationClosed E.translationalInhibitionClosed))

end MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean
end HautevilleHouse