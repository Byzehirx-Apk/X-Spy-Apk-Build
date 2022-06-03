.class public Lgnu/xquery/util/NamedCollator;
.super Ljava/text/Collator;
.source "NamedCollator.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field public static final UNICODE_CODEPOINT_COLLATION:Ljava/lang/String; = "http://www.w3.org/2005/xpath-functions/collation/codepoint"

.field public static final codepointCollation:Lgnu/xquery/util/NamedCollator;


# instance fields
.field collator:Ljava/text/Collator;

.field name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lgnu/xquery/util/NamedCollator;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lgnu/xquery/util/NamedCollator;-><init>()V

    sput-object v0, Lgnu/xquery/util/NamedCollator;->codepointCollation:Lgnu/xquery/util/NamedCollator;

    .line 38
    sget-object v0, Lgnu/xquery/util/NamedCollator;->codepointCollation:Lgnu/xquery/util/NamedCollator;

    const-string/jumbo v1, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    iput-object v1, v0, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 4
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/NamedCollator;
    move-object v1, v0

    invoke-direct {v1}, Ljava/text/Collator;-><init>()V

    return-void
.end method

.method public static codepointCompare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "str1":Ljava/lang/String;
    move-object v1, p1

    .local v1, "str2":Ljava/lang/String;
    const/4 v8, 0x0

    move v2, v8

    .local v2, "i1":I
    const/4 v8, 0x0

    move v3, v8

    .line 56
    .local v3, "i2":I
    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v4, v8

    .line 57
    .local v4, "len1":I
    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v5, v8

    .line 60
    .local v5, "len2":I
    :goto_0
    move v8, v2

    move v9, v4

    if-ne v8, v9, :cond_1

    .line 61
    move v8, v3

    move v9, v5

    if-ne v8, v9, :cond_0

    const/4 v8, 0x0

    :goto_1
    move v0, v8

    .line 73
    .end local v0    # "str1":Ljava/lang/String;
    :goto_2
    return v0

    .line 61
    .restart local v0    # "str1":Ljava/lang/String;
    :cond_0
    const/4 v8, -0x1

    goto :goto_1

    .line 62
    :cond_1
    move v8, v3

    move v9, v5

    if-ne v8, v9, :cond_2

    .line 63
    const/4 v8, 0x1

    move v0, v8

    goto :goto_2

    .line 64
    :cond_2
    move-object v8, v0

    move v9, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v6, v8

    .line 65
    .local v6, "c1":I
    move v8, v6

    const v9, 0xd800

    if-lt v8, v9, :cond_3

    move v8, v6

    const v9, 0xdc00

    if-ge v8, v9, :cond_3

    move v8, v2

    move v9, v4

    if-ge v8, v9, :cond_3

    .line 66
    move v8, v6

    const v9, 0xd800

    sub-int/2addr v8, v9

    const/16 v9, 0x400

    mul-int/lit16 v8, v8, 0x400

    move-object v9, v0

    move v10, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const v10, 0xdc00

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    const/high16 v9, 0x10000

    add-int/2addr v8, v9

    move v6, v8

    .line 68
    :cond_3
    move-object v8, v1

    move v9, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v7, v8

    .line 69
    .local v7, "c2":I
    move v8, v7

    const v9, 0xd800

    if-lt v8, v9, :cond_4

    move v8, v7

    const v9, 0xdc00

    if-ge v8, v9, :cond_4

    move v8, v3

    move v9, v5

    if-ge v8, v9, :cond_4

    .line 70
    move v8, v7

    const v9, 0xd800

    sub-int/2addr v8, v9

    const/16 v9, 0x400

    mul-int/lit16 v8, v8, 0x400

    move-object v9, v1

    move v10, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const v10, 0xdc00

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    const/high16 v9, 0x10000

    add-int/2addr v8, v9

    move v7, v8

    .line 72
    :cond_4
    move v8, v6

    move v9, v7

    if-eq v8, v9, :cond_6

    .line 73
    move v8, v6

    move v9, v7

    if-ge v8, v9, :cond_5

    const/4 v8, -0x1

    :goto_3
    move v0, v8

    goto :goto_2

    :cond_5
    const/4 v8, 0x1

    goto :goto_3

    .line 74
    :cond_6
    goto/16 :goto_0
.end method

.method public static find(Ljava/lang/String;)Lgnu/xquery/util/NamedCollator;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Lgnu/xquery/util/NamedCollator;->make(Ljava/lang/String;)Lgnu/xquery/util/NamedCollator;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static make(Ljava/lang/String;)Lgnu/xquery/util/NamedCollator;
    .locals 5

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    new-instance v2, Lgnu/xquery/util/NamedCollator;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lgnu/xquery/util/NamedCollator;-><init>()V

    move-object v1, v2

    .line 22
    .local v1, "coll":Lgnu/xquery/util/NamedCollator;
    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    .line 23
    move-object v2, v1

    invoke-virtual {v2}, Lgnu/xquery/util/NamedCollator;->resolve()V

    .line 24
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/NamedCollator;
    move-object v1, p1

    .local v1, "str1":Ljava/lang/String;
    move-object v2, p2

    .local v2, "str2":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Lgnu/xquery/util/NamedCollator;->collator:Ljava/text/Collator;

    if-eqz v3, :cond_0

    .line 81
    move-object v3, v0

    iget-object v3, v3, Lgnu/xquery/util/NamedCollator;->collator:Ljava/text/Collator;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .line 83
    .end local v0    # "this":Lgnu/xquery/util/NamedCollator;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/xquery/util/NamedCollator;
    :cond_0
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lgnu/xquery/util/NamedCollator;->codepointCompare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/NamedCollator;
    move-object v1, p1

    .local v1, "source":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lgnu/xquery/util/NamedCollator;->collator:Ljava/text/Collator;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/text/Collator;->getCollationKey(Ljava/lang/String;)Ljava/text/CollationKey;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/xquery/util/NamedCollator;
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/NamedCollator;
    move-object v1, v0

    iget-object v1, v1, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lgnu/xquery/util/NamedCollator;
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/NamedCollator;
    move-object v1, v0

    iget-object v1, v1, Lgnu/xquery/util/NamedCollator;->collator:Ljava/text/Collator;

    if-eqz v1, :cond_0

    .line 97
    move-object v1, v0

    iget-object v1, v1, Lgnu/xquery/util/NamedCollator;->collator:Ljava/text/Collator;

    invoke-virtual {v1}, Ljava/text/Collator;->hashCode()I

    move-result v1

    move v0, v1

    .line 99
    .end local v0    # "this":Lgnu/xquery/util/NamedCollator;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/xquery/util/NamedCollator;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/NamedCollator;
    move-object v1, p1

    .local v1, "in":Ljava/io/ObjectInput;
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    .line 111
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/xquery/util/NamedCollator;->resolve()V

    .line 112
    return-void
.end method

.method public resolve()V
    .locals 6

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/NamedCollator;
    move-object v1, v0

    iget-object v1, v1, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    const-string/jumbo v2, "http://www.w3.org/2005/xpath-functions/collation/codepoint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Ljava/lang/RuntimeException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown collation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_0
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/NamedCollator;
    move-object v1, p1

    .local v1, "out":Ljava/io/ObjectOutput;
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lgnu/xquery/util/NamedCollator;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 105
    return-void
.end method
