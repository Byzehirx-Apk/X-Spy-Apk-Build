.class public Landroidx/core/util/Pair;
.super Ljava/lang/Object;
.source "Pair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final first:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field public final second:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TS;)V"
        }
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<TF;TS;>;"
    move-object v1, p1

    .local v1, "first":Ljava/lang/Object;, "TF;"
    move-object v2, p2

    .local v2, "second":Ljava/lang/Object;, "TS;"
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    .line 39
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/core/util/Pair;
    .locals 7
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Landroidx/core/util/Pair",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "a":Ljava/lang/Object;, "TA;"
    move-object v1, p1

    .local v1, "b":Ljava/lang/Object;, "TB;"
    new-instance v2, Landroidx/core/util/Pair;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/core/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v2

    .end local v0    # "a":Ljava/lang/Object;, "TA;"
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<TF;TS;>;"
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Landroidx/core/util/Pair;

    if-nez v3, :cond_0

    .line 53
    const/4 v3, 0x0

    move v0, v3

    .line 56
    .end local v0    # "this":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<TF;TS;>;"
    :goto_0
    return v0

    .line 55
    .restart local v0    # "this":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<TF;TS;>;"
    :cond_0
    move-object v3, v1

    check-cast v3, Landroidx/core/util/Pair;

    move-object v2, v3

    .line 56
    .local v2, "p":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<**>;"
    move-object v3, v2

    iget-object v3, v3, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    iget-object v3, v3, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v3, v4}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<TF;TS;>;"
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    xor-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<TF;TS;>;"
    return v0

    .restart local v0    # "this":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<TF;TS;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<TF;TS;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Pair{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/util/Pair;, "Landroidx/core/util/Pair<TF;TS;>;"
    return-object v0
.end method
