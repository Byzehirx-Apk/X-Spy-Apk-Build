.class final Lcom/google/appinventor/components/runtime/Navigation$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Navigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/YailDictionary;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Navigation;

.field private synthetic l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Lcom/google/appinventor/components/runtime/util/YailList;

.field private synthetic mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:Lcom/google/appinventor/components/runtime/util/YailList;

.field private synthetic moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:D

.field private synthetic tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:D


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Navigation;Lcom/google/appinventor/components/runtime/util/YailDictionary;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;DD)V
    .locals 13

    .prologue
    .line 378
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Lcom/google/appinventor/components/runtime/Navigation$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Navigation;

    move-object v9, v0

    move-object v10, v2

    iput-object v10, v9, Lcom/google/appinventor/components/runtime/Navigation$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-object v9, v0

    move-object v10, v3

    iput-object v10, v9, Lcom/google/appinventor/components/runtime/Navigation$2;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v9, v0

    move-object v10, v4

    iput-object v10, v9, Lcom/google/appinventor/components/runtime/Navigation$2;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v9, v0

    move-wide v10, v5

    iput-wide v10, v9, Lcom/google/appinventor/components/runtime/Navigation$2;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:D

    move-object v9, v0

    move-wide v10, v7

    iput-wide v10, v9, Lcom/google/appinventor/components/runtime/Navigation$2;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:D

    move-object v9, v0

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 381
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Navigation$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Navigation;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Navigation$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/YailDictionary;

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/Navigation;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Navigation;Lcom/google/appinventor/components/runtime/util/YailDictionary;)Lcom/google/appinventor/components/runtime/util/YailDictionary;

    move-result-object v1

    .line 382
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Navigation$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Navigation;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Navigation$2;->mBLKdPlRolYfdtud5Z8giGWyhURWoCw9yHsOv08fUnIBAM4MuKAWkHVD8nEhBmIT:Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Navigation$2;->l557Ll1q9gLt3cEfyQaLTgWgvIutpQIPuKKLXX2glk42j33zjQ1xoBSDeCkOGk6j:Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v4, v0

    iget-wide v4, v4, Lcom/google/appinventor/components/runtime/Navigation$2;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:D

    move-object v6, v0

    iget-wide v6, v6, Lcom/google/appinventor/components/runtime/Navigation$2;->tee1T53LBirhPaiZzuBv7do2U2eC3n16AtczACNW2pKYEGgDhkkMv1hGUupyoKZE:D

    invoke-virtual/range {v1 .. v7}, Lcom/google/appinventor/components/runtime/Navigation;->GotDirections(Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;DD)V

    .line 383
    return-void
.end method
