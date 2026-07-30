import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean

structure RnaInterferenceTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr, DecidableEq

def rnaInterferenceTheoremStatement : RnaInterferenceTheoremStatement := {
  sourceKey := "molecular-biology-rna-interference-foundation",
  theoremName := "RNA Interference Foundation",
  theoremObject := "RnaInterferenceObject",
  classicalBoundary := "carried classical boundary",
  constrainedStatement := "RNA interference pathway closure constrained by admissible class",
  certificateLane := "rna_interference_constrained",
  carriedRemainder := "remainder outside constrained closure"
}

theorem theorem_statement_source_key_checked :
    rnaInterferenceTheoremStatement.sourceKey = "molecular-biology-rna-interference-foundation" := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    rnaInterferenceTheoremStatement.certificateLane = "rna_interference_constrained" := by
  rfl

end MolecularBiologyRnaInterferenceFoundationCanonicalLaneLean
end HautevilleHouse