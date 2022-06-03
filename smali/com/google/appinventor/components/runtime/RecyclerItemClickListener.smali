.class public Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$OnItemClickListener;
    }
.end annotation


# instance fields
.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/GestureDetector;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$OnItemClickListener;)V
    .locals 13

    .prologue
    .line 20
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 21
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$OnItemClickListener;

    .line 22
    move-object v4, v0

    new-instance v5, Landroid/view/GestureDetector;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v1

    new-instance v8, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$1;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    move-object v11, v2

    invoke-direct {v9, v10, v11}, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$1;-><init>(Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {v6, v7, v8}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/GestureDetector;

    .line 36
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;)Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$OnItemClickListener;
    .locals 2

    .prologue
    .line 9
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$OnItemClickListener;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v4

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 40
    move-object v3, v5

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$OnItemClickListener;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/view/GestureDetector;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$OnItemClickListener;

    move-object v5, v3

    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    .line 42
    const/4 v4, 0x1

    move v0, v4

    .line 44
    :goto_0
    return v0

    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 48
    return-void
.end method
