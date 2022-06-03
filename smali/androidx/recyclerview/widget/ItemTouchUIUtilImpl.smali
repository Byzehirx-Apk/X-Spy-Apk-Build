.class Landroidx/recyclerview/widget/ItemTouchUIUtilImpl;
.super Ljava/lang/Object;
.source "ItemTouchUIUtilImpl.java"

# interfaces
.implements Landroidx/recyclerview/widget/ItemTouchUIUtil;


# static fields
.field static final INSTANCE:Landroidx/recyclerview/widget/ItemTouchUIUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchUIUtilImpl;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/recyclerview/widget/ItemTouchUIUtilImpl;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/ItemTouchUIUtilImpl;->INSTANCE:Landroidx/recyclerview/widget/ItemTouchUIUtil;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchUIUtilImpl;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findMaxElevation(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)F
    .locals 9

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object v1, p1

    .local v1, "itemView":Landroid/view/View;
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v7

    move v2, v7

    .line 54
    .local v2, "childCount":I
    const/4 v7, 0x0

    move v3, v7

    .line 55
    .local v3, "max":F
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_0
    move v7, v4

    move v8, v2

    if-ge v7, v8, :cond_2

    .line 56
    move-object v7, v0

    move v8, v4

    invoke-virtual {v7, v8}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v5, v7

    .line 57
    .local v5, "child":Landroid/view/View;
    move-object v7, v5

    move-object v8, v1

    if-ne v7, v8, :cond_1

    .line 58
    .line 55
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 60
    :cond_1
    move-object v7, v5

    invoke-static {v7}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v7

    move v6, v7

    .line 61
    .local v6, "elevation":F
    move v7, v6

    move v8, v3

    cmpl-float v7, v7, v8

    if-lez v7, :cond_0

    .line 62
    move v7, v6

    move v3, v7

    goto :goto_1

    .line 65
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "elevation":F
    :cond_2
    move v7, v3

    move v0, v7

    .end local v0    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    return v0
.end method


# virtual methods
.method public clearView(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchUIUtilImpl;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    .line 76
    move-object v3, v1

    sget v4, Landroidx/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 77
    .local v2, "tag":Ljava/lang/Object;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    instance-of v3, v3, Ljava/lang/Float;

    if-eqz v3, :cond_0

    .line 78
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v3, v4}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 80
    :cond_0
    move-object v3, v1

    sget v4, Landroidx/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 83
    .end local v2    # "tag":Ljava/lang/Object;
    :cond_1
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 84
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 85
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .locals 13

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Landroidx/recyclerview/widget/ItemTouchUIUtilImpl;
    move-object v1, p1

    .local v1, "c":Landroid/graphics/Canvas;
    move-object v2, p2

    .local v2, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    move-object/from16 v3, p3

    .local v3, "view":Landroid/view/View;
    move/from16 v4, p4

    .local v4, "dX":F
    move/from16 v5, p5

    .local v5, "dY":F
    move/from16 v6, p6

    .local v6, "actionState":I
    move/from16 v7, p7

    .local v7, "isCurrentlyActive":Z
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v10, v11, :cond_0

    .line 37
    move v10, v7

    if-eqz v10, :cond_0

    .line 38
    move-object v10, v3

    sget v11, Landroidx/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    invoke-virtual {v10, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    move-object v8, v10

    .line 39
    .local v8, "originalElevation":Ljava/lang/Object;
    move-object v10, v8

    if-nez v10, :cond_0

    .line 40
    move-object v10, v3

    invoke-static {v10}, Landroidx/core/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    move-object v8, v10

    .line 41
    .local v8, "originalElevation":Ljava/lang/Float;
    const/high16 v10, 0x3f800000    # 1.0f

    move-object v11, v2

    move-object v12, v3

    invoke-static {v11, v12}, Landroidx/recyclerview/widget/ItemTouchUIUtilImpl;->findMaxElevation(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;)F

    move-result v11

    add-float/2addr v10, v11

    move v9, v10

    .line 42
    .local v9, "newElevation":F
    move-object v10, v3

    move v11, v9

    invoke-static {v10, v11}, Landroidx/core/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 43
    move-object v10, v3

    sget v11, Landroidx/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    move-object v12, v8

    invoke-virtual {v10, v11, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 48
    .end local v8    # "originalElevation":Ljava/lang/Float;
    .end local v9    # "newElevation":F
    :cond_0
    move-object v10, v3

    move v11, v4

    invoke-virtual {v10, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 49
    move-object v10, v3

    move v11, v5

    invoke-virtual {v10, v11}, Landroid/view/View;->setTranslationY(F)V

    .line 50
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "dX"    # F
    .param p5, "dY"    # F
    .param p6, "actionState"    # I
    .param p7, "isCurrentlyActive"    # Z

    .prologue
    .line 71
    return-void
.end method

.method public onSelected(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 89
    return-void
.end method
