.class public Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lcom/google/appinventor/components/runtime/ComponentContainer;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LAYOUT_GENERAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "swiperefreshlayout.jar, swiperefreshlayout.aar"
.end annotation


# instance fields
.field private Al9x361S9LLe4YuJ2FYrCTKylxVrvlRhCPyJ97vxqAo0DGA2cpEUDnPNY8RXP1UW:Z

.field private IMDN6rSQcZszgVNpJJVzEqq6OCV4rs9tTZyufLfJdSMnHOCoW11dHNeXoNpXCGNt:Z

.field private O8YFlD3Safgd5vkxHRoLznZm2if21MG0IxIn5jepRi6FBTeulibRFlvEXsnDANgS:I

.field private WT81i4At6dHne14KPL5TcdNiShzKisif1ehRA81016Xex9QKtWws9m2RXtqd3wpA:Z

.field private final activity:Landroid/app/Activity;

.field private alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

.field private final androidUIHandler:Landroid/os/Handler;

.field private backgroundColor:I

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private horizontalAlignment:I

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private final mainLayout:Landroid/view/ViewGroup;

.field private sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Lcom/google/appinventor/components/runtime/util/YailList;

.field private verticalAlignment:I

.field private final viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 11

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 32
    move-object v3, v0

    new-instance v4, Landroid/os/Handler;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->androidUIHandler:Landroid/os/Handler;

    .line 43
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->O8YFlD3Safgd5vkxHRoLznZm2if21MG0IxIn5jepRi6FBTeulibRFlvEXsnDANgS:I

    .line 44
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->IMDN6rSQcZszgVNpJJVzEqq6OCV4rs9tTZyufLfJdSMnHOCoW11dHNeXoNpXCGNt:Z

    .line 45
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->Al9x361S9LLe4YuJ2FYrCTKylxVrvlRhCPyJ97vxqAo0DGA2cpEUDnPNY8RXP1UW:Z

    .line 46
    move-object v3, v0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    const v7, -0xde690e

    .line 48
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x1

    const v7, -0xb350b0

    .line 49
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x2

    const v7, -0x115c5

    .line 50
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x3

    const v7, -0xcbcca

    .line 51
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 46
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 55
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->backgroundColor:I

    .line 56
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->WT81i4At6dHne14KPL5TcdNiShzKisif1ehRA81016Xex9QKtWws9m2RXtqd3wpA:Z

    .line 60
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 61
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->context:Landroid/content/Context;

    .line 62
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->activity:Landroid/app/Activity;

    .line 64
    move-object v3, v0

    new-instance v4, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 65
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 67
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v2, v3

    .line 68
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    move-object v3, v0

    new-instance v4, Lcom/google/appinventor/components/runtime/LinearLayout;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->context:Landroid/content/Context;

    const/4 v7, 0x1

    const/16 v8, 0x64

    .line 71
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x64

    .line 72
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/LinearLayout;-><init>(Landroid/content/Context;ILjava/lang/Integer;Ljava/lang/Integer;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    .line 74
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/LinearLayout;->setBaselineAligned(Z)V

    .line 76
    move-object v3, v0

    new-instance v4, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;-><init>(Lcom/google/appinventor/components/runtime/LinearLayout;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    .line 77
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->horizontalAlignment:I

    .line 78
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->verticalAlignment:I

    .line 79
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->horizontalAlignment:I

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(I)V

    .line 80
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->verticalAlignment:I

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(I)V

    .line 82
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/LinearLayout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v4

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    move-object v3, v0

    new-instance v4, Landroid/widget/FrameLayout;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->mainLayout:Landroid/view/ViewGroup;

    .line 85
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->mainLayout:Landroid/view/ViewGroup;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/16 v6, 0x64

    const/16 v7, 0x64

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->mainLayout:Landroid/view/ViewGroup;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 89
    move-object v3, v1

    move-object v4, v0

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 91
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->Enabled(Z)V

    .line 92
    move-object v3, v0

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Lcom/google/appinventor/components/runtime/util/YailList;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->ProgressAnimationColors(Lcom/google/appinventor/components/runtime/util/YailList;)V

    .line 93
    move-object v3, v0

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->ProgressBackgroundColor(I)V

    .line 94
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->LargeSize(Z)V

    .line 95
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->BackgroundColor(I)V

    .line 96
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->NestedScrolling(Z)V

    .line 98
    const-string/jumbo v3, "Swipe Refresh Layout"

    const-string/jumbo v4, "Swipe Refresh Layout Created"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 99
    return-void
.end method


# virtual methods
.method public $add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 4

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->viewLayout:Lcom/google/appinventor/components/runtime/LinearLayout;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/LinearLayout;->add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 119
    return-void
.end method

.method public $context()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->activity:Landroid/app/Activity;

    move-object v0, v1

    return-object v0
.end method

.method public $form()Lcom/google/appinventor/components/runtime/Form;
    .locals 2

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public AlignHorizontal()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how contents of the arrangement are aligned  horizontally. The choices are: 1 = left aligned, 2 = right aligned,  3 = horizontally centered.  Alignment has no effect if the arrangement\'s width is automatic."
    .end annotation

    .prologue
    .line 283
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->horizontalAlignment:I

    move v0, v1

    return v0
.end method

.method public AlignHorizontal(I)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "horizontal_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 268
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setHorizontalAlignment(I)V

    .line 269
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->horizontalAlignment:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .line 274
    :goto_0
    return-void

    .line 271
    :catch_0
    move-exception v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v0

    const-string/jumbo v4, "HorizontalAlignment"

    const/16 v5, 0x579

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    .line 272
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 271
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 274
    goto :goto_0
.end method

.method public AlignVertical()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "A number that encodes how the contents of the arrangement are aligned  vertically. The choices are: 1 = aligned at the top, 2 = vertically centered, 3 = aligned at the bottom.  Alignment has no effect if the arrangement\'s height is automatic."
    .end annotation

    .prologue
    .line 308
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->verticalAlignment:I

    move v0, v1

    return v0
.end method

.method public AlignVertical(I)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "vertical_alignment"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 293
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->alignmentSetter:Lcom/google/appinventor/components/runtime/util/AlignmentUtil;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/AlignmentUtil;->setVerticalAlignment(I)V

    .line 294
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->verticalAlignment:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .line 299
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    move-object v3, v0

    const-string/jumbo v4, "VerticalAlignment"

    const/16 v5, 0x57a

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    .line 297
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 296
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 299
    goto :goto_0
.end method

.method public BackgroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The background color of the swipe refresh layout."
    .end annotation

    .prologue
    .line 323
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->backgroundColor:I

    move v0, v1

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00000000"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 315
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->backgroundColor:I

    .line 316
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->mainLayout:Landroid/view/ViewGroup;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 317
    return-void
.end method

.method public Enabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If set to true the swpipe refresh layout is enabled."
    .end annotation

    .prologue
    .line 239
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->IMDN6rSQcZszgVNpJJVzEqq6OCV4rs9tTZyufLfJdSMnHOCoW11dHNeXoNpXCGNt:Z

    .line 240
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 241
    return-void
.end method

.method public Enabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if enabled."
    .end annotation

    .prologue
    .line 245
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->IMDN6rSQcZszgVNpJJVzEqq6OCV4rs9tTZyufLfJdSMnHOCoW11dHNeXoNpXCGNt:Z

    move v0, v1

    return v0
.end method

.method public IsRefreshing()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if is actively showing refresh progress."
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public LargeSize(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled is set to true the pull size will be large, else the size is default."
    .end annotation

    .prologue
    .line 226
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->Al9x361S9LLe4YuJ2FYrCTKylxVrvlRhCPyJ97vxqAo0DGA2cpEUDnPNY8RXP1UW:Z

    .line 227
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move v3, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setSize(I)V

    .line 228
    return-void

    .line 227
    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public LargeSize()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if large size is used."
    .end annotation

    .prologue
    .line 232
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->Al9x361S9LLe4YuJ2FYrCTKylxVrvlRhCPyJ97vxqAo0DGA2cpEUDnPNY8RXP1UW:Z

    move v0, v1

    return v0
.end method

.method public NestedScrolling(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Enable or disable nested scrolling for this view."
    .end annotation

    .prologue
    .line 252
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->WT81i4At6dHne14KPL5TcdNiShzKisif1ehRA81016Xex9QKtWws9m2RXtqd3wpA:Z

    .line 253
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setNestedScrollingEnabled(Z)V

    .line 254
    return-void
.end method

.method public NestedScrolling()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns true if nested scrolling is enabled."
    .end annotation

    .prologue
    .line 258
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->WT81i4At6dHne14KPL5TcdNiShzKisif1ehRA81016Xex9QKtWws9m2RXtqd3wpA:Z

    move v0, v1

    return v0
.end method

.method public OnRefresh()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect when a refresh is triggered via the swipe gesture."
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "OnRefresh"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 174
    return-void
.end method

.method public ProgressAnimationColors()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the used colors als list."
    .end annotation

    .prologue
    .line 206
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Lcom/google/appinventor/components/runtime/util/YailList;

    move-object v0, v1

    return-object v0
.end method

.method public ProgressAnimationColors(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the colors used in the progress animation. Use a \'make a list\' block. The first color on the list is than the first spinner color."
    .end annotation

    .prologue
    .line 193
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt:Lcom/google/appinventor/components/runtime/util/YailList;

    .line 194
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v4

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 196
    move-object v1, v5

    array-length v4, v4

    new-array v4, v4, [I

    move-object v2, v4

    .line 197
    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 198
    move-object v4, v2

    move v5, v3

    move-object v6, v1

    move v7, v3

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    .line 197
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 202
    return-void
.end method

.method public ProgressBackgroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the pull to refresh background color."
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->O8YFlD3Safgd5vkxHRoLznZm2if21MG0IxIn5jepRi6FBTeulibRFlvEXsnDANgS:I

    move v0, v1

    return v0
.end method

.method public ProgressBackgroundColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Change the pull to refresh background color."
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->O8YFlD3Safgd5vkxHRoLznZm2if21MG0IxIn5jepRi6FBTeulibRFlvEXsnDANgS:I

    .line 181
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setProgressBackgroundColorSchemeColor(I)V

    .line 182
    return-void
.end method

.method public Refreshing(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Notify the widget that refresh state has changed. Do not call this when refresh is triggered by a swipe gesture."
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 213
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->mainLayout:Landroid/view/ViewGroup;

    move-object v0, v1

    return-object v0
.end method

.method public onRefresh()V
    .locals 2

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->IMDN6rSQcZszgVNpJJVzEqq6OCV4rs9tTZyufLfJdSMnHOCoW11dHNeXoNpXCGNt:Z

    if-eqz v1, :cond_0

    .line 166
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->OnRefresh()V

    .line 168
    :cond_0
    return-void
.end method

.method public setChildHeight(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 11

    .prologue
    .line 146
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/Form;->Height()I

    move-result v4

    move v10, v4

    move v4, v10

    move v5, v10

    .line 147
    move v3, v5

    if-nez v4, :cond_0

    .line 149
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->androidUIHandler:Landroid/os/Handler;

    new-instance v5, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout$2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    invoke-direct {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout$2;-><init>(Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    .line 156
    :cond_0
    move v4, v2

    const/16 v5, -0x3e8

    if-gt v4, v5, :cond_1

    .line 157
    move v4, v3

    move v5, v2

    const/16 v6, -0x3e8

    add-int/lit16 v5, v5, 0x3e8

    neg-int v5, v5

    mul-int/2addr v4, v5

    const/16 v5, 0x64

    div-int/lit8 v4, v4, 0x64

    move v2, v4

    .line 159
    :cond_1
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastHeight(I)V

    .line 160
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v4

    move v5, v2

    invoke-static {v4, v5}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildHeightForVerticalLayout(Landroid/view/View;I)V

    .line 161
    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 7

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    .line 124
    return-void
.end method

.method public setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V
    .locals 14

    .prologue
    .line 127
    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v6}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->Width()I

    move-result v6

    move v13, v6

    move v6, v13

    move v7, v13

    .line 128
    move v5, v7

    if-nez v6, :cond_0

    move v6, v4

    const/4 v7, 0x2

    if-ge v6, v7, :cond_0

    .line 130
    move-object v6, v1

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;->androidUIHandler:Landroid/os/Handler;

    new-instance v7, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout$1;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    move v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout$1;-><init>(Lcom/google/appinventor/components/runtime/MakeroidSwipeRefreshLayout;Lcom/google/appinventor/components/runtime/AndroidViewComponent;II)V

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v6

    .line 137
    :cond_0
    move v6, v3

    const/16 v7, -0x3e8

    if-gt v6, v7, :cond_1

    .line 138
    move v6, v5

    move v7, v3

    const/16 v8, -0x3e8

    add-int/lit16 v7, v7, 0x3e8

    neg-int v7, v7

    mul-int/2addr v6, v7

    const/16 v7, 0x64

    div-int/lit8 v6, v6, 0x64

    move v3, v6

    .line 140
    :cond_1
    move-object v6, v2

    move v7, v3

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->setLastWidth(I)V

    .line 141
    move-object v6, v2

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v6

    move v7, v3

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setChildWidthForVerticalLayout(Landroid/view/View;I)V

    .line 142
    return-void
.end method
