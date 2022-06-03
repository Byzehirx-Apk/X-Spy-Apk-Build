.class public Lcom/google/appinventor/components/runtime/util/DividerItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SourceFile"


# static fields
.field private static final vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:[I


# instance fields
.field private vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 16
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x1010214

    aput v3, v1, v2

    sput-object v0, Lcom/google/appinventor/components/runtime/util/DividerItemDecoration;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 10

    .prologue
    .line 18
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 19
    move v3, v2

    if-nez v3, :cond_0

    .line 20
    move-object v3, v1

    sget-object v4, Lcom/google/appinventor/components/runtime/util/DividerItemDecoration;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    move-object v1, v3

    .line 21
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/DividerItemDecoration;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/graphics/drawable/Drawable;

    .line 22
    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 23
    .line 28
    :goto_0
    return-void

    .line 23
    :cond_0
    move v3, v2

    const v4, 0xffffff

    if-ne v3, v4, :cond_1

    .line 24
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "divider_transparent"

    const-string/jumbo v7, "drawable"

    move-object v8, v1

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/DividerItemDecoration;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 26
    :cond_1
    move-object v3, v0

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move v6, v2

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/util/DividerItemDecoration;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/graphics/drawable/Drawable;

    .line 28
    goto :goto_0
.end method


# virtual methods
.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 15

    .prologue
    .line 32
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v9, v2

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v9

    move v3, v9

    .line 33
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v9

    move-object v10, v2

    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    move v4, v9

    .line 35
    move-object v9, v2

    invoke-virtual {v9}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v9

    move v5, v9

    .line 36
    const/4 v9, 0x0

    move v6, v9

    :goto_0
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_0

    .line 37
    move-object v9, v2

    move v10, v6

    invoke-virtual {v9, v10}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    .line 39
    move-object v7, v10

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v8, v9

    .line 41
    move-object v9, v7

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    move-object v10, v8

    iget v10, v10, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v9, v10

    move v14, v9

    move v9, v14

    move v10, v14

    .line 42
    move v7, v10

    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/util/DividerItemDecoration;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    add-int/2addr v9, v10

    move v8, v9

    .line 44
    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/util/DividerItemDecoration;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/graphics/drawable/Drawable;

    move v10, v3

    move v11, v7

    move v12, v4

    move v13, v8

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 45
    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/util/DividerItemDecoration;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Landroid/graphics/drawable/Drawable;

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 36
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method
