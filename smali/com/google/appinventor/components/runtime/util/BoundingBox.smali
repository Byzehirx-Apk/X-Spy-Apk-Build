.class public final Lcom/google/appinventor/components/runtime/util/BoundingBox;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:D

.field private J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:D

.field private KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:D

.field private bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 13

    .prologue
    .line 27
    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-object v9, v0

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 28
    move-object v9, v0

    move-wide v10, v1

    iput-wide v10, v9, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:D

    .line 29
    move-object v9, v0

    move-wide v10, v3

    iput-wide v10, v9, Lcom/google/appinventor/components/runtime/util/BoundingBox;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:D

    .line 30
    move-object v9, v0

    move-wide v10, v5

    iput-wide v10, v9, Lcom/google/appinventor/components/runtime/util/BoundingBox;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:D

    .line 31
    move-object v9, v0

    move-wide v10, v7

    iput-wide v10, v9, Lcom/google/appinventor/components/runtime/util/BoundingBox;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:D

    .line 32
    return-void
.end method


# virtual methods
.method public final getBottom()D
    .locals 3

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/util/BoundingBox;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:D

    move-wide v0, v1

    return-wide v0
.end method

.method public final getLeft()D
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:D

    move-wide v0, v1

    return-wide v0
.end method

.method public final getRight()D
    .locals 3

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/util/BoundingBox;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:D

    move-wide v0, v1

    return-wide v0
.end method

.method public final getTop()D
    .locals 3

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Lcom/google/appinventor/components/runtime/util/BoundingBox;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:D

    move-wide v0, v1

    return-wide v0
.end method

.method public final intersectDestructively(Lcom/google/appinventor/components/runtime/util/BoundingBox;)Z
    .locals 14

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    move-object v10, v0

    iget-wide v10, v10, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:D

    move-object v12, v1

    iget-wide v12, v12, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:D

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    move-wide v2, v10

    .line 46
    move-object v10, v0

    iget-wide v10, v10, Lcom/google/appinventor/components/runtime/util/BoundingBox;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:D

    move-object v12, v1

    iget-wide v12, v12, Lcom/google/appinventor/components/runtime/util/BoundingBox;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:D

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    move-wide v4, v10

    .line 47
    move-object v10, v0

    iget-wide v10, v10, Lcom/google/appinventor/components/runtime/util/BoundingBox;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:D

    move-object v12, v1

    iget-wide v12, v12, Lcom/google/appinventor/components/runtime/util/BoundingBox;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:D

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    move-wide v6, v10

    .line 48
    move-object v10, v0

    iget-wide v10, v10, Lcom/google/appinventor/components/runtime/util/BoundingBox;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:D

    move-object v12, v1

    iget-wide v12, v12, Lcom/google/appinventor/components/runtime/util/BoundingBox;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:D

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    move-wide v8, v10

    .line 51
    move-wide v10, v2

    move-wide v12, v4

    cmpl-double v10, v10, v12

    if-gtz v10, :cond_0

    move-wide v10, v6

    move-wide v12, v8

    cmpl-double v10, v10, v12

    if-lez v10, :cond_1

    .line 52
    :cond_0
    const/4 v10, 0x0

    move v0, v10

    .line 60
    :goto_0
    return v0

    .line 56
    :cond_1
    move-object v10, v0

    move-wide v11, v2

    iput-wide v11, v10, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:D

    .line 57
    move-object v10, v0

    move-wide v11, v4

    iput-wide v11, v10, Lcom/google/appinventor/components/runtime/util/BoundingBox;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:D

    .line 58
    move-object v10, v0

    move-wide v11, v6

    iput-wide v11, v10, Lcom/google/appinventor/components/runtime/util/BoundingBox;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:D

    .line 59
    move-object v10, v0

    move-wide v11, v8

    iput-wide v11, v10, Lcom/google/appinventor/components/runtime/util/BoundingBox;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:D

    .line 60
    const/4 v10, 0x1

    move v0, v10

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 101
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "<BoundingBox (left = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    iget-wide v2, v2, Lcom/google/appinventor/components/runtime/util/BoundingBox;->bVeTzqSexGvEaauwiYAVDIi0rEKwP38hsr4zIk14QJ70YrYaNw4t0FSa76teZ34b:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", top = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/google/appinventor/components/runtime/util/BoundingBox;->J9GCddMpW5m7K6b7f8nFol5AuYTClyx20NTbEibimiSwx7sDFiwQjZjPs0Mw8DwU:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", right = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/google/appinventor/components/runtime/util/BoundingBox;->KZERK4FJjgj00YJ12FkBt8g0XGe7fRlOujzm0QMQzA20gzGqez6qkZCId3aKJaes:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", bottom = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-wide v2, v2, Lcom/google/appinventor/components/runtime/util/BoundingBox;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
