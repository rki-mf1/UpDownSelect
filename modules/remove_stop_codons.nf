process remove_stop_codons {
    publishDir "${params.output}/remove_stop_codons", mode: params.publish_dir_mode

    input:
    path fasta

    output:
    path "${fasta.baseName}.fasta"

    script:
    """
    remove_stop_codons.py -i $fasta -o ${fasta.baseName}.fasta
    """
}