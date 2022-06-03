.class public abstract Lcom/google/appinventor/components/runtime/MakeroidListViewBase;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field public static final DEFAULT_PRIMARY_TEXT_COLOR:I

.field public static final DEFAULT_SECONDARY_TEXT_COLOR:I


# instance fields
.field public backgroundColor:I

.field public container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field public context:Landroid/content/Context;

.field public dividerColor:I

.field public form:Lcom/google/appinventor/components/runtime/Form;

.field public isCompanion:Z

.field public final listViewLayout:Landroid/widget/LinearLayout;

.field public recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string/jumbo v0, "&HFF212121"

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->DEFAULT_PRIMARY_TEXT_COLOR:I

    .line 40
    const-string/jumbo v0, "&HFF757575"

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/PaintUtil;->hexStringToInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->DEFAULT_SECONDARY_TEXT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;I)V
    .locals 12

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 34
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->backgroundColor:I

    .line 35
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->dividerColor:I

    .line 37
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->isCompanion:Z

    .line 44
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 45
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->context:Landroid/content/Context;

    .line 46
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 48
    move-object v3, v0

    new-instance v4, Landroid/widget/LinearLayout;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->listViewLayout:Landroid/widget/LinearLayout;

    .line 49
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->listViewLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51
    move-object v3, v0

    new-instance v4, Landroidx/recyclerview/widget/RecyclerView;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->context:Landroid/content/Context;

    move v7, v2

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 55
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->listViewLayout:Landroid/widget/LinearLayout;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 56
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->listViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 58
    move-object v3, v1

    move-object v4, v0

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 60
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->context:Landroid/content/Context;

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v8, Lcom/google/appinventor/components/runtime/MakeroidListViewBase$1;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Lcom/google/appinventor/components/runtime/MakeroidListViewBase$1;-><init>(Lcom/google/appinventor/components/runtime/MakeroidListViewBase;)V

    invoke-direct {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/RecyclerItemClickListener;-><init>(Landroid/content/Context;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/appinventor/components/runtime/RecyclerItemClickListener$OnItemClickListener;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 75
    move-object v3, v0

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->Width(I)V

    .line 76
    move-object v3, v0

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->Height(I)V

    .line 77
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->BackgroundColor(I)V

    .line 78
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->DividerColor(I)V

    .line 80
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v3, v3, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v3, :cond_0

    .line 81
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->isCompanion:Z

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method public BackgroundColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get the background color of the listview."
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->backgroundColor:I

    move v0, v1

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&H00FFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the background color of the listview"
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->backgroundColor:I

    .line 97
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    move v3, v1

    if-nez v3, :cond_0

    const v3, 0xffffff

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setBackgroundColor(I)V

    .line 98
    return-void

    .line 97
    :cond_0
    move v3, v1

    goto :goto_0
.end method

.method public DividerColor()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get the divider color of the listview."
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->dividerColor:I

    move v0, v1

    return v0
.end method

.method public DividerColor(I)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "&HFFCCCCCC"
        editorType = "color"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the divider color of the listview"
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->dividerColor:I

    .line 111
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/google/appinventor/components/runtime/util/DividerItemDecoration;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->context:Landroid/content/Context;

    move v6, v1

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/util/DividerItemDecoration;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 112
    return-void
.end method

.method public Height(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the height of the list on the view."
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 128
    return-void
.end method

.method public Width(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines the width of the list on the view."
    .end annotation

    .prologue
    .line 133
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 134
    const/4 v2, -0x2

    move v1, v2

    .line 136
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 137
    return-void
.end method

.method public abstract click(I)V
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->listViewLayout:Landroid/widget/LinearLayout;

    move-object v0, v1

    return-object v0
.end method

.method public abstract longClick(I)V
.end method

.method public setRecyclerViewOrientation(I)V
    .locals 9

    .prologue
    .line 90
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/MakeroidListViewBase;->context:Landroid/content/Context;

    move v6, v1

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 91
    return-void
.end method
