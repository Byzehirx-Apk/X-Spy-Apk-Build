.class public abstract Landroidx/cursoradapter/widget/ResourceCursorAdapter;
.super Landroidx/cursoradapter/widget/CursorAdapter;
.source "ResourceCursorAdapter.java"


# instance fields
.field private mDropDownLayout:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/ResourceCursorAdapter;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "layout":I
    move-object v3, p3

    .local v3, "c":Landroid/database/Cursor;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Landroidx/cursoradapter/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 55
    move-object v4, v0

    move-object v5, v0

    move v6, v2

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput v7, v6, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput v5, v4, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mLayout:I

    .line 56
    move-object v4, v0

    move-object v5, v1

    const-string/jumbo v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iput-object v5, v4, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;I)V
    .locals 11

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/ResourceCursorAdapter;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "layout":I
    move-object v3, p3

    .local v3, "c":Landroid/database/Cursor;
    move v4, p4

    .local v4, "flags":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Landroidx/cursoradapter/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 100
    move-object v5, v0

    move-object v6, v0

    move v7, v2

    move-object v9, v6

    move v10, v7

    move v6, v10

    move-object v7, v9

    move v8, v10

    iput v8, v7, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput v6, v5, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mLayout:I

    .line 101
    move-object v5, v0

    move-object v6, v1

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    iput-object v6, v5, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/ResourceCursorAdapter;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "layout":I
    move-object v3, p3

    .local v3, "c":Landroid/database/Cursor;
    move v4, p4

    .local v4, "autoRequery":Z
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    move v8, v4

    invoke-direct {v5, v6, v7, v8}, Landroidx/cursoradapter/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 83
    move-object v5, v0

    move-object v6, v0

    move v7, v2

    move-object v9, v6

    move v10, v7

    move v6, v10

    move-object v7, v9

    move v8, v10

    iput v8, v7, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mDropDownLayout:I

    iput v6, v5, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mLayout:I

    .line 84
    move-object v5, v0

    move-object v6, v1

    const-string/jumbo v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    iput-object v6, v5, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 85
    return-void
.end method


# virtual methods
.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/ResourceCursorAdapter;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "cursor":Landroid/database/Cursor;
    move-object v3, p3

    .local v3, "parent":Landroid/view/ViewGroup;
    move-object v4, v0

    iget-object v4, v4, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object v5, v0

    iget v5, v5, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mDropDownLayout:I

    move-object v6, v3

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Landroidx/cursoradapter/widget/ResourceCursorAdapter;
    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/ResourceCursorAdapter;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "cursor":Landroid/database/Cursor;
    move-object v3, p3

    .local v3, "parent":Landroid/view/ViewGroup;
    move-object v4, v0

    iget-object v4, v4, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object v5, v0

    iget v5, v5, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mLayout:I

    move-object v6, v3

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Landroidx/cursoradapter/widget/ResourceCursorAdapter;
    return-object v0
.end method

.method public setDropDownViewResource(I)V
    .locals 4

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/ResourceCursorAdapter;
    move v1, p1

    .local v1, "dropDownLayout":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mDropDownLayout:I

    .line 136
    return-void
.end method

.method public setViewResource(I)V
    .locals 4

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/ResourceCursorAdapter;
    move v1, p1

    .local v1, "layout":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->mLayout:I

    .line 127
    return-void
.end method
