process build_gene_families {
    publishDir "${params.output}/build_gene_families/", mode: params.publish_dir_mode

    input:
    path pan_matrix
    path fasta

    output:
    path "*.fasta"

    script:
    """
    build_gene_families.py -m $pan_matrix -s $fasta -r ${params.ref_id}
    """
}