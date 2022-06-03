.class public Landroidx/cursoradapter/widget/SimpleCursorAdapter;
.super Landroidx/cursoradapter/widget/ResourceCursorAdapter;
.source "SimpleCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/cursoradapter/widget/SimpleCursorAdapter$CursorToStringConverter;,
        Landroidx/cursoradapter/widget/SimpleCursorAdapter$ViewBinder;
    }
.end annotation


# instance fields
.field private mCursorToStringConverter:Landroidx/cursoradapter/widget/SimpleCursorAdapter$CursorToStringConverter;

.field protected mFrom:[I
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field mOriginalFrom:[Ljava/lang/String;

.field private mStringConversionColumn:I

.field protected mTo:[I
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field private mViewBinder:Landroidx/cursoradapter/widget/SimpleCursorAdapter$ViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/SimpleCursorAdapter;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "layout":I
    move-object v3, p3

    .local v3, "c":Landroid/database/Cursor;
    move-object v4, p4

    .local v4, "from":[Ljava/lang/String;
    move-object v5, p5

    .local v5, "to":[I
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 53
    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    .line 70
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mTo:[I

    .line 71
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 72
    move-object v6, v0

    move-object v7, v3

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 12

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/SimpleCursorAdapter;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move v2, p2

    .local v2, "layout":I
    move-object v3, p3

    .local v3, "c":Landroid/database/Cursor;
    move-object/from16 v4, p4

    .local v4, "from":[Ljava/lang/String;
    move-object/from16 v5, p5

    .local v5, "to":[I
    move/from16 v6, p6

    .local v6, "flags":I
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move-object v10, v3

    move v11, v6

    invoke-direct {v7, v8, v9, v10, v11}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    .line 53
    move-object v7, v0

    const/4 v8, -0x1

    iput v8, v7, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    .line 96
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mTo:[I

    .line 97
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 98
    move-object v7, v0

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method private findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/SimpleCursorAdapter;
    move-object v1, p1

    .local v1, "c":Landroid/database/Cursor;
    move-object v2, p2

    .local v2, "from":[Ljava/lang/String;
    move-object v5, v1

    if-eqz v5, :cond_3

    .line 318
    move-object v5, v2

    array-length v5, v5

    move v4, v5

    .line 319
    .local v4, "count":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mFrom:[I

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mFrom:[I

    array-length v5, v5

    move v6, v4

    if-eq v5, v6, :cond_1

    .line 320
    :cond_0
    move-object v5, v0

    move v6, v4

    new-array v6, v6, [I

    iput-object v6, v5, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mFrom:[I

    .line 322
    :cond_1
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_2

    .line 323
    move-object v5, v0

    iget-object v5, v5, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mFrom:[I

    move v6, v3

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    aget-object v8, v8, v9

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v6

    .line 322
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 325
    .line 328
    .end local v3    # "i":I
    .end local v4    # "count":I
    :cond_2
    :goto_1
    return-void

    .line 326
    :cond_3
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mFrom:[I

    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 18

    .prologue
    .line 126
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/SimpleCursorAdapter;
    move-object/from16 v1, p1

    .local v1, "view":Landroid/view/View;
    move-object/from16 v2, p2

    .local v2, "context":Landroid/content/Context;
    move-object/from16 v3, p3

    .local v3, "cursor":Landroid/database/Cursor;
    move-object v12, v0

    iget-object v12, v12, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mViewBinder:Landroidx/cursoradapter/widget/SimpleCursorAdapter$ViewBinder;

    move-object v4, v12

    .line 127
    .local v4, "binder":Landroidx/cursoradapter/widget/SimpleCursorAdapter$ViewBinder;
    move-object v12, v0

    iget-object v12, v12, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mTo:[I

    array-length v12, v12

    move v5, v12

    .line 128
    .local v5, "count":I
    move-object v12, v0

    iget-object v12, v12, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mFrom:[I

    move-object v6, v12

    .line 129
    .local v6, "from":[I
    move-object v12, v0

    iget-object v12, v12, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mTo:[I

    move-object v7, v12

    .line 131
    .local v7, "to":[I
    const/4 v12, 0x0

    move v8, v12

    .local v8, "i":I
    :goto_0
    move v12, v8

    move v13, v5

    if-ge v12, v13, :cond_5

    .line 132
    move-object v12, v1

    move-object v13, v7

    move v14, v8

    aget v13, v13, v14

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    move-object v9, v12

    .line 133
    .local v9, "v":Landroid/view/View;
    move-object v12, v9

    if-eqz v12, :cond_2

    .line 134
    const/4 v12, 0x0

    move v10, v12

    .line 135
    .local v10, "bound":Z
    move-object v12, v4

    if-eqz v12, :cond_0

    .line 136
    move-object v12, v4

    move-object v13, v9

    move-object v14, v3

    move-object v15, v6

    move/from16 v16, v8

    aget v15, v15, v16

    invoke-interface {v12, v13, v14, v15}, Landroidx/cursoradapter/widget/SimpleCursorAdapter$ViewBinder;->setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z

    move-result v12

    move v10, v12

    .line 139
    :cond_0
    move v12, v10

    if-nez v12, :cond_2

    .line 140
    move-object v12, v3

    move-object v13, v6

    move v14, v8

    aget v13, v13, v14

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    .line 141
    .local v11, "text":Ljava/lang/String;
    move-object v12, v11

    if-nez v12, :cond_1

    .line 142
    const-string/jumbo v12, ""

    move-object v11, v12

    .line 145
    :cond_1
    move-object v12, v9

    instance-of v12, v12, Landroid/widget/TextView;

    if-eqz v12, :cond_3

    .line 146
    move-object v12, v0

    move-object v13, v9

    check-cast v13, Landroid/widget/TextView;

    move-object v14, v11

    invoke-virtual {v12, v13, v14}, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 131
    .end local v10    # "bound":Z
    .end local v11    # "text":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 147
    .restart local v10    # "bound":Z
    .restart local v11    # "text":Ljava/lang/String;
    :cond_3
    move-object v12, v9

    instance-of v12, v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_4

    .line 148
    move-object v12, v0

    move-object v13, v9

    check-cast v13, Landroid/widget/ImageView;

    move-object v14, v11

    invoke-virtual {v12, v13, v14}, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1

    .line 150
    :cond_4
    new-instance v12, Ljava/lang/IllegalStateException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v9

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " is not a "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " view that can be bounds by this SimpleCursorAdapter"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 156
    .end local v9    # "v":Landroid/view/View;
    .end local v10    # "bound":Z
    .end local v11    # "text":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public changeCursorAndColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 7

    .prologue
    .line 351
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/SimpleCursorAdapter;
    move-object v1, p1

    .local v1, "c":Landroid/database/Cursor;
    move-object v2, p2

    .local v2, "from":[Ljava/lang/String;
    move-object v3, p3

    .local v3, "to":[I
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    .line 352
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mTo:[I

    .line 356
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 357
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 358
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/SimpleCursorAdapter;
    move-object v1, p1

    .local v1, "cursor":Landroid/database/Cursor;
    move-object v2, v0

    iget-object v2, v2, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroidx/cursoradapter/widget/SimpleCursorAdapter$CursorToStringConverter;

    if-eqz v2, :cond_0

    .line 300
    move-object v2, v0

    iget-object v2, v2, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroidx/cursoradapter/widget/SimpleCursorAdapter$CursorToStringConverter;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroidx/cursoradapter/widget/SimpleCursorAdapter$CursorToStringConverter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    .line 305
    .end local v0    # "this":Landroidx/cursoradapter/widget/SimpleCursorAdapter;
    :goto_0
    return-object v0

    .line 301
    .restart local v0    # "this":Landroidx/cursoradapter/widget/SimpleCursorAdapter;
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    const/4 v3, -0x1

    if-le v2, v3, :cond_1

    .line 302
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 305
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public getCursorToStringConverter()Landroidx/cursoradapter/widget/SimpleCursorAdapter$CursorToStringConverter;
    .locals 2

    .prologue
    .line 267
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/SimpleCursorAdapter;
    move-object v1, v0

    iget-object v1, v1, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroidx/cursoradapter/widget/SimpleCursorAdapter$CursorToStringConverter;

    move-object v0, v1

    .end local v0    # "this":Landroidx/cursoradapter/widget/SimpleCursorAdapter;
    return-object v0
.end method

.method public getStringConversionColumn()I
    .locals 2

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/SimpleCursorAdapter;
    move-object v1, v0

    iget v1, v1, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    move v0, v1

    .end local v0    # "this":Landroidx/cursoradapter/widget/SimpleCursorAdapter;
    return v0
.end method

.method public getViewBinder()Landroidx/cursoradapter/widget/SimpleCursorAdapter$ViewBinder;
    .locals 2

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/SimpleCursorAdapter;
    move-object v1, v0

    iget-object v1, v1, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mViewBinder:Landroidx/cursoradapter/widget/SimpleCursorAdapter$ViewBinder;

    move-object v0, v1

    .end local v0    # "this":Landroidx/cursoradapter/widget/SimpleCursorAdapter;
    return-object v0
.end method

.method public setCursorToStringConverter(Landroidx/cursoradapter/widget/SimpleCursorAdapter$CursorToStringConverter;)V
    .locals 4

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/SimpleCursorAdapter;
    move-object v1, p1

    .local v1, "cursorToStringConverter":Landroidx/cursoradapter/widget/SimpleCursorAdapter$CursorToStringConverter;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mCursorToStringConverter:Landroidx/cursoradapter/widget/SimpleCursorAdapter$CursorToStringConverter;

    .line 284
    return-void
.end method

.method public setStringConversionColumn(I)V
    .locals 4

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/SimpleCursorAdapter;
    move v1, p1

    .local v1, "stringConversionColumn":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mStringConversionColumn:I

    .line 252
    return-void
.end method

.method public setViewBinder(Landroidx/cursoradapter/widget/SimpleCursorAdapter$ViewBinder;)V
    .locals 4

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/SimpleCursorAdapter;
    move-object v1, p1

    .local v1, "viewBinder":Landroidx/cursoradapter/widget/SimpleCursorAdapter$ViewBinder;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mViewBinder:Landroidx/cursoradapter/widget/SimpleCursorAdapter$ViewBinder;

    .line 181
    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/SimpleCursorAdapter;
    move-object v1, p1

    .local v1, "v":Landroid/widget/ImageView;
    move-object v2, p2

    .local v2, "value":Ljava/lang/String;
    move-object v4, v1

    move-object v5, v2

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .line 204
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 202
    .local v3, "nfe":Ljava/lang/NumberFormatException;
    move-object v4, v1

    move-object v5, v2

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/SimpleCursorAdapter;
    move-object v1, p1

    .local v1, "v":Landroid/widget/TextView;
    move-object v2, p2

    .local v2, "text":Ljava/lang/String;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "this":Landroidx/cursoradapter/widget/SimpleCursorAdapter;
    move-object v1, p1

    .local v1, "c":Landroid/database/Cursor;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->mOriginalFrom:[Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroidx/cursoradapter/widget/SimpleCursorAdapter;->findColumns(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 336
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Landroidx/cursoradapter/widget/SimpleCursorAdapter;
    return-object v0
.end method
