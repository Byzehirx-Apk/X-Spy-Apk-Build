.class final Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;

.field hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ImageView;

.field qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Landroid/widget/TextView;

.field vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;Landroid/view/View;)V
    .locals 9

    .prologue
    .line 464
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;

    .line 465
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 466
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "image"

    const-string/jumbo v7, "id"

    move-object v8, v1

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/widget/ImageView;

    .line 467
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "title"

    const-string/jumbo v7, "id"

    move-object v8, v1

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/widget/TextView;

    .line 468
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "subtitle"

    const-string/jumbo v7, "id"

    move-object v8, v1

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidListViewImageText$ListAdapter$a;->qPeHJnCLP0dAOwDPeFIn82vcSIsCMh6KFFn3o4kyIe0RhQKOQXDeyY2LFwPu2GbE:Landroid/widget/TextView;

    .line 469
    return-void
.end method
