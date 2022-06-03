.class final Lcom/google/appinventor/components/runtime/EventDispatcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Landroid/view/View;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Component;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 210
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/EventDispatcher$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Component;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/EventDispatcher$1;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/EventDispatcher$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Ljava/lang/Object;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    .line 213
    move-object v0, p0

    const/4 v4, 0x0

    move v1, v4

    .line 214
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/EventDispatcher$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Component;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/Component;->getDispatchDelegate()Lcom/google/appinventor/components/runtime/HandlesEventDispatching;

    move-result-object v4

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 215
    move-object v2, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/EventDispatcher$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Component;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/EventDispatcher$1;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->canDispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 216
    move-object v4, v2

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;)Lcom/google/appinventor/components/runtime/EventDispatcher$b;

    move-result-object v4

    .line 1064
    iget-object v4, v4, Lcom/google/appinventor/components/runtime/EventDispatcher$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Ljava/util/HashMap;

    .line 217
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/EventDispatcher$1;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    .line 218
    move-object v3, v5

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 219
    move-object v4, v2

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/EventDispatcher$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Component;

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/EventDispatcher$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/EventDispatcher;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/HandlesEventDispatching;Ljava/util/Set;Lcom/google/appinventor/components/runtime/Component;[Ljava/lang/Object;)Z

    move-result v4

    move v1, v4

    .line 221
    :cond_0
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/EventDispatcher$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Component;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/EventDispatcher$1;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:Ljava/lang/String;

    move v7, v1

    if-nez v7, :cond_2

    const/4 v7, 0x1

    :goto_0
    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/EventDispatcher$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/HandlesEventDispatching;->dispatchGenericEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z[Ljava/lang/Object;)V

    .line 223
    :cond_1
    return-void

    .line 221
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method
