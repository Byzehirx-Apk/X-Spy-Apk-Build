.class final Lgnu/xml/MappingInfo;
.super Ljava/lang/Object;
.source "XMLFilter.java"


# instance fields
.field index:I

.field local:Ljava/lang/String;

.field namespaces:Lgnu/xml/NamespaceBinding;

.field nextInBucket:Lgnu/xml/MappingInfo;

.field prefix:Ljava/lang/String;

.field qname:Lgnu/mapping/Symbol;

.field tagHash:I

.field type:Lgnu/xml/XName;

.field uri:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 1602
    move-object v0, p0

    .local v0, "this":Lgnu/xml/MappingInfo;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1640
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lgnu/xml/MappingInfo;->index:I

    return-void
.end method

.method static equals(Ljava/lang/String;Ljava/lang/StringBuffer;)Z
    .locals 7

    .prologue
    .line 1691
    move-object v0, p0

    .local v0, "tag":Ljava/lang/String;
    move-object v1, p1

    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    move v2, v4

    .line 1692
    .local v2, "length":I
    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    move v5, v2

    if-eq v4, v5, :cond_0

    .line 1693
    const/4 v4, 0x0

    move v0, v4

    .line 1697
    .end local v0    # "tag":Ljava/lang/String;
    :goto_0
    return v0

    .line 1694
    .restart local v0    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_2

    .line 1695
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_1

    .line 1696
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 1694
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1697
    :cond_2
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method static equals(Ljava/lang/String;[CII)Z
    .locals 8

    .prologue
    .line 1702
    move-object v0, p0

    .local v0, "tag":Ljava/lang/String;
    move-object v1, p1

    .local v1, "data":[C
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "length":I
    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v6, v3

    if-eq v5, v6, :cond_0

    .line 1703
    const/4 v5, 0x0

    move v0, v5

    .line 1707
    .end local v0    # "tag":Ljava/lang/String;
    :goto_0
    return v0

    .line 1704
    .restart local v0    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_1
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_2

    .line 1705
    move-object v5, v1

    move v6, v2

    move v7, v4

    add-int/2addr v6, v7

    aget-char v5, v5, v6

    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_1

    .line 1706
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 1704
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1707
    :cond_2
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0
.end method

.method static hash(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 1644
    move-object v0, p0

    .local v0, "prefix":Ljava/lang/String;
    move-object v1, p1

    .local v1, "local":Ljava/lang/String;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    move v2, v3

    .line 1645
    .local v2, "hash":I
    move-object v3, v0

    if-eqz v3, :cond_0

    .line 1646
    move v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    xor-int/2addr v3, v4

    move v2, v3

    .line 1647
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "prefix":Ljava/lang/String;
    return v0
.end method

.method static hash([CII)I
    .locals 11

    .prologue
    .line 1653
    move-object v0, p0

    .local v0, "data":[C
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "length":I
    const/4 v8, 0x0

    move v3, v8

    .line 1654
    .local v3, "hash":I
    const/4 v8, 0x0

    move v4, v8

    .line 1655
    .local v4, "prefixHash":I
    const/4 v8, -0x1

    move v5, v8

    .line 1656
    .local v5, "colonPos":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_0
    move v8, v6

    move v9, v2

    if-ge v8, v9, :cond_1

    .line 1658
    move-object v8, v0

    move v9, v1

    move v10, v6

    add-int/2addr v9, v10

    aget-char v8, v8, v9

    move v7, v8

    .line 1659
    .local v7, "ch":C
    move v8, v7

    const/16 v9, 0x3a

    if-ne v8, v9, :cond_0

    move v8, v5

    if-gez v8, :cond_0

    .line 1661
    move v8, v6

    move v5, v8

    .line 1662
    move v8, v3

    move v4, v8

    .line 1663
    const/4 v8, 0x0

    move v3, v8

    .line 1656
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1666
    :cond_0
    const/16 v8, 0x1f

    move v9, v3

    mul-int/2addr v8, v9

    move v9, v7

    add-int/2addr v8, v9

    move v3, v8

    goto :goto_1

    .line 1668
    .end local v7    # "ch":C
    :cond_1
    move v8, v4

    move v9, v3

    xor-int/2addr v8, v9

    move v0, v8

    .end local v0    # "data":[C
    return v0
.end method


# virtual methods
.method match([CII)Z
    .locals 10

    .prologue
    .line 1674
    move-object v0, p0

    .local v0, "this":Lgnu/xml/MappingInfo;
    move-object v1, p1

    .local v1, "data":[C
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "length":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 1676
    move-object v6, v0

    iget-object v6, v6, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v4, v6

    .line 1677
    .local v4, "localLength":I
    move-object v6, v0

    iget-object v6, v6, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v5, v6

    .line 1678
    .local v5, "prefixLength":I
    move v6, v3

    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v4

    add-int/2addr v7, v8

    if-ne v6, v7, :cond_0

    move-object v6, v1

    move v7, v5

    aget-char v6, v6, v7

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lgnu/xml/MappingInfo;->prefix:Ljava/lang/String;

    move-object v7, v1

    move v8, v2

    move v9, v5

    invoke-static {v6, v7, v8, v9}, Lgnu/xml/MappingInfo;->equals(Ljava/lang/String;[CII)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    move-object v7, v1

    move v8, v2

    move v9, v5

    add-int/2addr v8, v9

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v9, v4

    invoke-static {v6, v7, v8, v9}, Lgnu/xml/MappingInfo;->equals(Ljava/lang/String;[CII)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    move v0, v6

    .line 1684
    .end local v0    # "this":Lgnu/xml/MappingInfo;
    .end local v4    # "localLength":I
    .end local v5    # "prefixLength":I
    :goto_1
    return v0

    .line 1678
    .restart local v0    # "this":Lgnu/xml/MappingInfo;
    .restart local v4    # "localLength":I
    .restart local v5    # "prefixLength":I
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1684
    .end local v4    # "localLength":I
    .end local v5    # "prefixLength":I
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lgnu/xml/MappingInfo;->local:Ljava/lang/String;

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-static {v6, v7, v8, v9}, Lgnu/xml/MappingInfo;->equals(Ljava/lang/String;[CII)Z

    move-result v6

    move v0, v6

    goto :goto_1
.end method
