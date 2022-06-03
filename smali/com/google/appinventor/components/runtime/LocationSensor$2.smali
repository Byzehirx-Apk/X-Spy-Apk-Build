.class final Lcom/google/appinventor/components/runtime/LocationSensor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/LocationSensor;->RefreshProvider(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/LocationSensor;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

.field final synthetic z89WSVwZ7PB2CmtTjCz6wAa186XxEwXZ6USChsRUkmrmINCnliZwpzt9cagYiYvX:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/LocationSensor;Lcom/google/appinventor/components/runtime/LocationSensor;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 630
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/LocationSensor$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/LocationSensor;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/LocationSensor$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/LocationSensor;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/LocationSensor$2;->z89WSVwZ7PB2CmtTjCz6wAa186XxEwXZ6USChsRUkmrmINCnliZwpzt9cagYiYvX:Ljava/lang/String;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 633
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/LocationSensor$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/LocationSensor;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/LocationSensor;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/LocationSensor;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    new-instance v3, Lcom/google/appinventor/components/runtime/LocationSensor$2$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/LocationSensor$2$1;-><init>(Lcom/google/appinventor/components/runtime/LocationSensor$2;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 648
    return-void
.end method
