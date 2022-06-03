.class final Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->LoadFromURL(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

.field private synthetic q8iygSjgpTZ52A5K8GXhnvUs2CX4iXd4uIVtwvououVquIzlzfVOfWIR3CjSHG4:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 190
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$2;->q8iygSjgpTZ52A5K8GXhnvUs2CX4iXd4uIVtwvououVquIzlzfVOfWIR3CjSHG4:Ljava/lang/String;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 192
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase$2;->q8iygSjgpTZ52A5K8GXhnvUs2CX4iXd4uIVtwvououVquIzlzfVOfWIR3CjSHG4:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;->access$000(Lcom/google/appinventor/components/runtime/MapFeatureContainerBase;Ljava/lang/String;)V

    .line 193
    return-void
.end method
