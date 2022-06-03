.class final Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/recyclerview/widget/RecyclerView;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/recyclerview/widget/RecyclerView;

    move-object v3, v0

    invoke-direct {v3}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 7

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/recyclerview/widget/RecyclerView;

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    .line 31
    move-object v1, v3

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;)Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$OnItemClickListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 32
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;)Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$OnItemClickListener;

    move-result-object v2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/recyclerview/widget/RecyclerView;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$OnItemClickListener;->onLongItemClick(Landroid/view/View;I)V

    .line 34
    :cond_0
    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x1

    move v0, v2

    return v0
.end method
