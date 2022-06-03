.class public abstract Landroidx/cursoradapter/widget/CursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "CursorAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;,
        Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;
    }
.end annotation


# static fields
.field public static final FLAG_AUTO_REQUERY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_REGISTER_CONTENT_OBSERVER:I = 0x2


# instance fields
.field protected mAutoRequery:Z
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field protected mChangeObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field protected mCursor:Landroid/database/Cursor;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field protected mCursorFilter:Landroidx/cursoradapter/widget/CursorFilter;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field protected mDataSetObserver:Landroid/database/DataSetObserver;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field protected mDataValid:Z
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field protected mFilterQueryProvider:Landroid/widget/FilterQueryProvider;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field protected mRowIDColumn:I
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/CursorAdapter;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "c":Landroid/database/Cursor;
    move-object v3, v0

    invoke-direct {v3}, Landroid/widget/BaseAdapter;-><init>()V

    .line 135
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroidx/cursoradapter/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 8

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/CursorAdapter;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "c":Landroid/database/Cursor;
    move v3, p3

    .local v3, "flags":I
    move-object v4, v0

    invoke-direct {v4}, Landroid/widget/BaseAdapter;-><init>()V

    .line 164
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/cursoradapter/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 8

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/CursorAdapter;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "c":Landroid/database/Cursor;
    move v3, p3

    .local v3, "autoRequery":Z
    move-object v4, v0

    invoke-direct {v4}, Landroid/widget/BaseAdapter;-><init>()V

    .line 151
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v4, v5, v6, v7}, Landroidx/cursoradapter/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 152
    return-void

    .line 151
    :cond_0
    const/4 v7, 0x2

    goto :goto_0
.end method


# virtual methods
.method public abstract bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 5

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/CursorAdapter;
    move-object v1, p1

    .local v1, "cursor":Landroid/database/Cursor;
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/cursoradapter/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 335
    .local v2, "old":Landroid/database/Cursor;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 336
    move-object v3, v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_0
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/CursorAdapter;
    move-object v1, p1

    .local v1, "cursor":Landroid/database/Cursor;
    move-object v2, v1

    if-nez v2, :cond_0

    const-string/jumbo v2, ""

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Landroidx/cursoradapter/widget/CursorAdapter;
    return-object v0

    .restart local v0    # "this":Landroidx/cursoradapter/widget/CursorAdapter;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/CursorAdapter;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 217
    move-object v1, v0

    iget-object v1, v1, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move v0, v1

    .line 219
    .end local v0    # "this":Landroidx/cursoradapter/widget/CursorAdapter;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/cursoradapter/widget/CursorAdapter;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/CursorAdapter;
    move-object v1, v0

    iget-object v1, v1, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    move-object v0, v1

    .end local v0    # "this":Landroidx/cursoradapter/widget/CursorAdapter;
    return-object v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    .line 280
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/CursorAdapter;
    move v1, p1

    .local v1, "position":I
    move-object v2, p2

    .local v2, "convertView":Landroid/view/View;
    move-object v3, p3

    .local v3, "parent":Landroid/view/ViewGroup;
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    if-eqz v5, :cond_1

    .line 281
    move-object v5, v0

    iget-object v5, v5, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    move v6, v1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    .line 283
    move-object v5, v2

    if-nez v5, :cond_0

    .line 284
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/cursoradapter/widget/CursorAdapter;->mContext:Landroid/content/Context;

    move-object v7, v0

    iget-object v7, v7, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroidx/cursoradapter/widget/CursorAdapter;->newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 288
    .local v4, "v":Landroid/view/View;
    :goto_0
    move-object v5, v0

    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroidx/cursoradapter/widget/CursorAdapter;->mContext:Landroid/content/Context;

    move-object v8, v0

    iget-object v8, v8, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v5, v6, v7, v8}, Landroidx/cursoradapter/widget/CursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 289
    move-object v5, v4

    move-object v0, v5

    .line 291
    .end local v0    # "this":Landroidx/cursoradapter/widget/CursorAdapter;
    .end local v4    # "v":Landroid/view/View;
    :goto_1
    return-object v0

    .line 286
    .restart local v0    # "this":Landroidx/cursoradapter/widget/CursorAdapter;
    :cond_0
    move-object v5, v2

    move-object v4, v5

    .restart local v4    # "v":Landroid/view/View;
    goto :goto_0

    .line 291
    .end local v4    # "v":Landroid/view/View;
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 6

    .prologue
    .line 426
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/CursorAdapter;
    move-object v1, v0

    iget-object v1, v1, Landroidx/cursoradapter/widget/CursorAdapter;->mCursorFilter:Landroidx/cursoradapter/widget/CursorFilter;

    if-nez v1, :cond_0

    .line 427
    move-object v1, v0

    new-instance v2, Landroidx/cursoradapter/widget/CursorFilter;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/cursoradapter/widget/CursorFilter;-><init>(Landroidx/cursoradapter/widget/CursorFilter$CursorFilterClient;)V

    iput-object v2, v1, Landroidx/cursoradapter/widget/CursorAdapter;->mCursorFilter:Landroidx/cursoradapter/widget/CursorFilter;

    .line 429
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/cursoradapter/widget/CursorAdapter;->mCursorFilter:Landroidx/cursoradapter/widget/CursorFilter;

    move-object v0, v1

    .end local v0    # "this":Landroidx/cursoradapter/widget/CursorAdapter;
    return-object v0
.end method

.method public getFilterQueryProvider()Landroid/widget/FilterQueryProvider;
    .locals 2

    .prologue
    .line 442
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/CursorAdapter;
    move-object v1, v0

    iget-object v1, v1, Landroidx/cursoradapter/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    move-object v0, v1

    .end local v0    # "this":Landroidx/cursoradapter/widget/CursorAdapter;
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/CursorAdapter;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 229
    move-object v2, v0

    iget-object v2, v2, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    move v3, v1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    .line 230
    move-object v2, v0

    iget-object v2, v2, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    move-object v0, v2

    .line 232
    .end local v0    # "this":Landroidx/cursoradapter/widget/CursorAdapter;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/cursoradapter/widget/CursorAdapter;
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/CursorAdapter;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    .line 242
    move-object v2, v0

    iget-object v2, v2, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    move v3, v1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    move-object v2, v0

    iget-object v2, v2, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    move-object v3, v0

    iget v3, v3, Landroidx/cursoradapter/widget/CursorAdapter;->mRowIDColumn:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-wide v0, v2

    .line 248
    .end local v0    # "this":Landroidx/cursoradapter/widget/CursorAdapter;
    :goto_0
    return-wide v0

    .line 245
    .restart local v0    # "this":Landroidx/cursoradapter/widget/CursorAdapter;
    :cond_0
    const-wide/16 v2, 0x0

    move-wide v0, v2

    goto :goto_0

    .line 248
    :cond_1
    const-wide/16 v2, 0x0

    move-wide v0, v2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/CursorAdapter;
    move v1, p1

    .local v1, "position":I
    move-object v2, p2

    .local v2, "convertView":Landroid/view/View;
    move-object v3, p3

    .local v3, "parent":Landroid/view/ViewGroup;
    move-object v5, v0

    iget-boolean v5, v5, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    if-nez v5, :cond_0

    .line 263
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "this should only be called when the cursor is valid"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 265
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    move v6, v1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 266
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "couldn\'t move cursor to position "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 269
    :cond_1
    move-object v5, v2

    if-nez v5, :cond_2

    .line 270
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/cursoradapter/widget/CursorAdapter;->mContext:Landroid/content/Context;

    move-object v7, v0

    iget-object v7, v7, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroidx/cursoradapter/widget/CursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 274
    .local v4, "v":Landroid/view/View;
    :goto_0
    move-object v5, v0

    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroidx/cursoradapter/widget/CursorAdapter;->mContext:Landroid/content/Context;

    move-object v8, v0

    iget-object v8, v8, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v5, v6, v7, v8}, Landroidx/cursoradapter/widget/CursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 275
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Landroidx/cursoradapter/widget/CursorAdapter;
    return-object v0

    .line 272
    .end local v4    # "v":Landroid/view/View;
    .restart local v0    # "this":Landroidx/cursoradapter/widget/CursorAdapter;
    :cond_2
    move-object v5, v2

    move-object v4, v5

    .restart local v4    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 2

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/CursorAdapter;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Landroidx/cursoradapter/widget/CursorAdapter;
    return v0
.end method

.method init(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 10

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/CursorAdapter;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "c":Landroid/database/Cursor;
    move v3, p3

    .local v3, "flags":I
    move v5, v3

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 178
    move v5, v3

    const/4 v6, 0x2

    or-int/lit8 v5, v5, 0x2

    move v3, v5

    .line 179
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroidx/cursoradapter/widget/CursorAdapter;->mAutoRequery:Z

    .line 183
    :goto_0
    move-object v5, v2

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    :goto_1
    move v4, v5

    .line 184
    .local v4, "cursorPresent":Z
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 185
    move-object v5, v0

    move v6, v4

    iput-boolean v6, v5, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    .line 186
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/cursoradapter/widget/CursorAdapter;->mContext:Landroid/content/Context;

    .line 187
    move-object v5, v0

    move v6, v4

    if-eqz v6, :cond_4

    move-object v6, v2

    const-string/jumbo v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    :goto_2
    iput v6, v5, Landroidx/cursoradapter/widget/CursorAdapter;->mRowIDColumn:I

    .line 188
    move v5, v3

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 189
    move-object v5, v0

    new-instance v6, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;-><init>(Landroidx/cursoradapter/widget/CursorAdapter;)V

    iput-object v6, v5, Landroidx/cursoradapter/widget/CursorAdapter;->mChangeObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    .line 190
    move-object v5, v0

    new-instance v6, Landroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroidx/cursoradapter/widget/CursorAdapter$MyDataSetObserver;-><init>(Landroidx/cursoradapter/widget/CursorAdapter;)V

    iput-object v6, v5, Landroidx/cursoradapter/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 196
    :goto_3
    move v5, v4

    if-eqz v5, :cond_1

    .line 197
    move-object v5, v0

    iget-object v5, v5, Landroidx/cursoradapter/widget/CursorAdapter;->mChangeObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    if-eqz v5, :cond_0

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroidx/cursoradapter/widget/CursorAdapter;->mChangeObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v5, v6}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 198
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/cursoradapter/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v5, :cond_1

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroidx/cursoradapter/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v5, v6}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 200
    :cond_1
    return-void

    .line 181
    .end local v4    # "cursorPresent":Z
    :cond_2
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/cursoradapter/widget/CursorAdapter;->mAutoRequery:Z

    goto :goto_0

    .line 183
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 187
    .restart local v4    # "cursorPresent":Z
    :cond_4
    const/4 v6, -0x1

    goto :goto_2

    .line 192
    :cond_5
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/cursoradapter/widget/CursorAdapter;->mChangeObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    .line 193
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/cursoradapter/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    goto :goto_3
.end method

.method protected init(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/CursorAdapter;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "c":Landroid/database/Cursor;
    move v3, p3

    .local v3, "autoRequery":Z
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v4, v5, v6, v7}, Landroidx/cursoradapter/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 174
    return-void

    .line 173
    :cond_0
    const/4 v7, 0x2

    goto :goto_0
.end method

.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    .line 314
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/CursorAdapter;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "cursor":Landroid/database/Cursor;
    move-object v3, p3

    .local v3, "parent":Landroid/view/ViewGroup;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroidx/cursoradapter/widget/CursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Landroidx/cursoradapter/widget/CursorAdapter;
    return-object v0
.end method

.method public abstract newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected onContentChanged()V
    .locals 3

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/CursorAdapter;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/cursoradapter/widget/CursorAdapter;->mAutoRequery:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 471
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    move-result v2

    iput-boolean v2, v1, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    .line 473
    :cond_0
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 417
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/CursorAdapter;
    move-object v1, p1

    .local v1, "constraint":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/cursoradapter/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    if-eqz v2, :cond_0

    .line 418
    move-object v2, v0

    iget-object v2, v2, Landroidx/cursoradapter/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    .line 421
    .end local v0    # "this":Landroidx/cursoradapter/widget/CursorAdapter;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/cursoradapter/widget/CursorAdapter;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    move-object v0, v2

    goto :goto_0
.end method

.method public setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V
    .locals 4

    .prologue
    .line 458
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/CursorAdapter;
    move-object v1, p1

    .local v1, "filterQueryProvider":Landroid/widget/FilterQueryProvider;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/cursoradapter/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    .line 459
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/CursorAdapter;
    move-object v1, p1

    .local v1, "newCursor":Landroid/database/Cursor;
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-ne v3, v4, :cond_0

    .line 352
    const/4 v3, 0x0

    move-object v0, v3

    .line 373
    .end local v0    # "this":Landroidx/cursoradapter/widget/CursorAdapter;
    :goto_0
    return-object v0

    .line 354
    .restart local v0    # "this":Landroidx/cursoradapter/widget/CursorAdapter;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    move-object v2, v3

    .line 355
    .local v2, "oldCursor":Landroid/database/Cursor;
    move-object v3, v2

    if-eqz v3, :cond_2

    .line 356
    move-object v3, v0

    iget-object v3, v3, Landroidx/cursoradapter/widget/CursorAdapter;->mChangeObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    if-eqz v3, :cond_1

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/cursoradapter/widget/CursorAdapter;->mChangeObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v3, v4}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 357
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/cursoradapter/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v3, :cond_2

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/cursoradapter/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v3, v4}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 359
    :cond_2
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/cursoradapter/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 360
    move-object v3, v1

    if-eqz v3, :cond_5

    .line 361
    move-object v3, v0

    iget-object v3, v3, Landroidx/cursoradapter/widget/CursorAdapter;->mChangeObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/cursoradapter/widget/CursorAdapter;->mChangeObserver:Landroidx/cursoradapter/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v3, v4}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 362
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroidx/cursoradapter/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v3, :cond_4

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/cursoradapter/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v3, v4}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 363
    :cond_4
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroidx/cursoradapter/widget/CursorAdapter;->mRowIDColumn:I

    .line 364
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    .line 366
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/cursoradapter/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 373
    :goto_1
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 368
    :cond_5
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/cursoradapter/widget/CursorAdapter;->mRowIDColumn:I

    .line 369
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroidx/cursoradapter/widget/CursorAdapter;->mDataValid:Z

    .line 371
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/cursoradapter/widget/CursorAdapter;->notifyDataSetInvalidated()V

    goto :goto_1
.end method
