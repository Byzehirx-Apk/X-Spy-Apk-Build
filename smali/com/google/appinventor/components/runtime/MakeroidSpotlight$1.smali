.class final Lcom/google/appinventor/components/runtime/MakeroidSpotlight$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wooplr/spotlight/utils/SpotlightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->ShowSpotlight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidSpotlight;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidSpotlight;)V
    .locals 4

    .prologue
    .line 412
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSpotlight$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidSpotlight;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserClicked(Lcom/wooplr/spotlight/SpotlightView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 415
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidSpotlight;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->Clicked()V

    .line 416
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSpotlight$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidSpotlight;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/MakeroidSpotlight;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidSpotlight;)Z

    move-result v3

    .line 417
    return-void
.end method
