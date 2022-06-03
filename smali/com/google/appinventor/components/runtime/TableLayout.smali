.class public Lcom/google/appinventor/components/runtime/TableLayout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Layout;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final layoutManager:Landroid/widget/TableLayout;

.field private numColumns:I

.field private numRows:I


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .locals 13

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v7, v0

    new-instance v8, Landroid/widget/TableLayout;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v1

    invoke-direct {v9, v10}, Landroid/widget/TableLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v7, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    .line 41
    move-object v7, v0

    move v8, v2

    iput v8, v7, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    .line 42
    move-object v7, v0

    move v8, v3

    iput v8, v7, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    .line 43
    move-object v7, v0

    new-instance v8, Landroid/os/Handler;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v8, v7, Lcom/google/appinventor/components/runtime/TableLayout;->handler:Landroid/os/Handler;

    .line 45
    const/4 v7, 0x0

    move v4, v7

    :goto_0
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_1

    .line 46
    new-instance v7, Landroid/widget/TableRow;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    invoke-direct {v8, v9}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    move-object v5, v7

    .line 47
    const/4 v7, 0x0

    move v6, v7

    :goto_1
    move v7, v6

    move v8, v2

    if-ge v7, v8, :cond_0

    .line 48
    move-object v7, v5

    move-object v8, v0

    invoke-direct {v8}, Lcom/google/appinventor/components/runtime/TableLayout;->newEmptyCellView()Landroid/view/View;

    move-result-object v8

    move v9, v6

    invoke-static {}, Lcom/google/appinventor/components/runtime/TableLayout;->newEmptyCellLayoutParams()Landroid/widget/TableRow$LayoutParams;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Landroid/widget/TableRow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 47
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 50
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    move-object v8, v5

    move v9, v4

    new-instance v10, Landroid/widget/TableLayout$LayoutParams;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    invoke-virtual {v7, v8, v9, v10}, Landroid/widget/TableLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 45
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/TableLayout;Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 4

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/TableLayout;->addChild(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    return-void
.end method

.method private addChild(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 9

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Row()I

    move-result v4

    move v2, v4

    .line 132
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Column()I

    move-result v4

    move v3, v4

    .line 133
    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    move v4, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    .line 135
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/TableLayout;->addChildLater(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 152
    :goto_0
    return-void

    .line 139
    :cond_1
    move v4, v2

    if-ltz v4, :cond_3

    move v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    if-ge v4, v5, :cond_3

    .line 140
    move v4, v3

    if-ltz v4, :cond_2

    move v4, v3

    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    if-ge v4, v5, :cond_2

    .line 141
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TableRow;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    .line 142
    move-object v2, v5

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/TableRow;->removeViewAt(I)V

    .line 143
    move-object v4, v1

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v4

    move-object v1, v4

    .line 144
    move-object v4, v2

    move-object v5, v1

    move v6, v3

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 145
    goto :goto_0

    .line 146
    :cond_2
    const-string/jumbo v4, "TableLayout"

    const-string/jumbo v5, "Child has illegal Column property: "

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 149
    :cond_3
    const-string/jumbo v4, "TableLayout"

    const-string/jumbo v5, "Child has illegal Row property: "

    move-object v6, v1

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 152
    goto :goto_0
.end method

.method private addChildLater(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 8

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/TableLayout;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/TableLayout$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/TableLayout$1;-><init>(Lcom/google/appinventor/components/runtime/TableLayout;Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 128
    return-void
.end method

.method private static newCellLayoutParams()Landroid/widget/TableRow$LayoutParams;
    .locals 3

    .prologue
    .line 163
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    return-object v0
.end method

.method private static newEmptyCellLayoutParams()Landroid/widget/TableRow$LayoutParams;
    .locals 5

    .prologue
    .line 159
    new-instance v0, Landroid/widget/TableRow$LayoutParams;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private newEmptyCellView()Landroid/view/View;
    .locals 5

    .prologue
    .line 155
    move-object v0, p0

    new-instance v1, Landroid/widget/TextView;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    invoke-virtual {v3}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V
    .locals 4

    .prologue
    .line 115
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/google/appinventor/components/runtime/TableLayout;->newCellLayoutParams()Landroid/widget/TableRow$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/TableLayout;->addChildLater(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 117
    return-void
.end method

.method public getLayoutManager()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    move-object v0, v1

    return-object v0
.end method

.method getNumColumns()I
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    move v0, v1

    return v0
.end method

.method getNumRows()I
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    move v0, v1

    return v0
.end method

.method setNumColumns(I)V
    .locals 9

    .prologue
    .line 59
    move-object v0, p0

    move v1, p1

    move v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    if-le v5, v6, :cond_2

    .line 61
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    invoke-virtual {v5}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 62
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    if-ge v5, v6, :cond_1

    .line 63
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TableRow;

    move-object v2, v5

    .line 64
    move-object v5, v0

    iget v5, v5, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    move v4, v5

    :goto_1
    move v5, v4

    move v6, v1

    if-ge v5, v6, :cond_0

    .line 65
    move-object v5, v2

    move-object v6, v0

    invoke-direct {v6}, Lcom/google/appinventor/components/runtime/TableLayout;->newEmptyCellView()Landroid/view/View;

    move-result-object v6

    move v7, v4

    invoke-static {}, Lcom/google/appinventor/components/runtime/TableLayout;->newEmptyCellLayoutParams()Landroid/widget/TableRow$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/widget/TableRow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 64
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 62
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    :cond_1
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    .line 70
    .line 78
    :goto_2
    return-void

    .line 70
    :cond_2
    move v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    if-ge v5, v6, :cond_4

    .line 72
    const/4 v5, 0x0

    move v2, v5

    :goto_3
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    if-ge v5, v6, :cond_3

    .line 73
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TableRow;

    .line 74
    move v6, v1

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    move v8, v1

    sub-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/widget/TableRow;->removeViews(II)V

    .line 72
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 76
    :cond_3
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    .line 78
    :cond_4
    goto :goto_2
.end method

.method setNumRows(I)V
    .locals 12

    .prologue
    .line 85
    move-object v0, p0

    move v1, p1

    move v6, v1

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    if-le v6, v7, :cond_2

    .line 87
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    invoke-virtual {v6}, Landroid/widget/TableLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v2, v6

    .line 88
    move-object v6, v0

    iget v6, v6, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    move v3, v6

    :goto_0
    move v6, v3

    move v7, v1

    if-ge v6, v7, :cond_1

    .line 89
    new-instance v6, Landroid/widget/TableRow;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v2

    invoke-direct {v7, v8}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    move-object v4, v6

    .line 90
    const/4 v6, 0x0

    move v5, v6

    :goto_1
    move v6, v5

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/TableLayout;->numColumns:I

    if-ge v6, v7, :cond_0

    .line 91
    move-object v6, v4

    move-object v7, v0

    invoke-direct {v7}, Lcom/google/appinventor/components/runtime/TableLayout;->newEmptyCellView()Landroid/view/View;

    move-result-object v7

    move v8, v5

    invoke-static {}, Lcom/google/appinventor/components/runtime/TableLayout;->newEmptyCellLayoutParams()Landroid/widget/TableRow$LayoutParams;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/widget/TableRow;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 90
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 93
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    move-object v7, v4

    move v8, v3

    new-instance v9, Landroid/widget/TableLayout$LayoutParams;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Landroid/widget/TableLayout$LayoutParams;-><init>()V

    invoke-virtual {v6, v7, v8, v9}, Landroid/widget/TableLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 88
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    :cond_1
    move-object v6, v0

    move v7, v1

    iput v7, v6, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    .line 96
    .line 101
    :goto_2
    return-void

    .line 96
    :cond_2
    move v6, v1

    move-object v7, v0

    iget v7, v7, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    if-ge v6, v7, :cond_3

    .line 98
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/TableLayout;->layoutManager:Landroid/widget/TableLayout;

    move v7, v1

    move-object v8, v0

    iget v8, v8, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    move v9, v1

    sub-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/widget/TableLayout;->removeViews(II)V

    .line 99
    move-object v6, v0

    move v7, v1

    iput v7, v6, Lcom/google/appinventor/components/runtime/TableLayout;->numRows:I

    .line 101
    :cond_3
    goto :goto_2
.end method
