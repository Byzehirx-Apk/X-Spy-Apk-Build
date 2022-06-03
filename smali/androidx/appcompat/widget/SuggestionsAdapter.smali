.class Landroidx/appcompat/widget/SuggestionsAdapter;
.super Landroidx/cursoradapter/widget/ResourceCursorAdapter;
.source "SuggestionsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field static final INVALID_INDEX:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SuggestionsAdapter"

.field private static final QUERY_LIMIT:I = 0x32

.field static final REFINE_ALL:I = 0x2

.field static final REFINE_BY_ENTRY:I = 0x1

.field static final REFINE_NONE:I


# instance fields
.field private mClosed:Z

.field private final mCommitIconResId:I

.field private mFlagsCol:I

.field private mIconName1Col:I

.field private mIconName2Col:I

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderContext:Landroid/content/Context;

.field private mQueryRefinement:I

.field private final mSearchManager:Landroid/app/SearchManager;

.field private final mSearchView:Landroidx/appcompat/widget/SearchView;

.field private final mSearchable:Landroid/app/SearchableInfo;

.field private mText1Col:I

.field private mText2Col:I

.field private mText2UrlCol:I

.field private mUrlColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/appcompat/widget/SearchView;",
            "Landroid/app/SearchableInfo;",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "searchView":Landroidx/appcompat/widget/SearchView;
    move-object v3, p3

    .local v3, "searchable":Landroid/app/SearchableInfo;
    move-object v4, p4

    .local v4, "outsideDrawablesCache":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable$ConstantState;>;"
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v7}, Landroidx/appcompat/widget/SearchView;->getSuggestionRowLayout()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 74
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroidx/appcompat/widget/SuggestionsAdapter;->mClosed:Z

    .line 75
    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Landroidx/appcompat/widget/SuggestionsAdapter;->mQueryRefinement:I

    .line 83
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/appcompat/widget/SuggestionsAdapter;->mText1Col:I

    .line 84
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/appcompat/widget/SuggestionsAdapter;->mText2Col:I

    .line 85
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/appcompat/widget/SuggestionsAdapter;->mText2UrlCol:I

    .line 86
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/appcompat/widget/SuggestionsAdapter;->mIconName1Col:I

    .line 87
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/appcompat/widget/SuggestionsAdapter;->mIconName2Col:I

    .line 88
    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Landroidx/appcompat/widget/SuggestionsAdapter;->mFlagsCol:I

    .line 97
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "search"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/SearchManager;

    iput-object v6, v5, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchManager:Landroid/app/SearchManager;

    .line 98
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchView:Landroidx/appcompat/widget/SearchView;

    .line 99
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    .line 100
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Landroidx/appcompat/widget/SearchView;->getSuggestionCommitIconResId()I

    move-result v6

    iput v6, v5, Landroidx/appcompat/widget/SuggestionsAdapter;->mCommitIconResId:I

    .line 103
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    .line 105
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroidx/appcompat/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 106
    return-void
.end method

.method private checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 583
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    move-object v1, p1

    .local v1, "resourceUri":Ljava/lang/String;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v2, v3

    .line 584
    .local v2, "cached":Landroid/graphics/drawable/Drawable$ConstantState;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 585
    const/4 v3, 0x0

    move-object v0, v3

    .line 588
    .end local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method private formatUrl(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 12

    .prologue
    .line 336
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    move-object v1, p1

    .local v1, "url":Ljava/lang/CharSequence;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    if-nez v3, :cond_0

    .line 338
    new-instance v3, Landroid/util/TypedValue;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    move-object v2, v3

    .line 339
    .local v2, "colorValue":Landroid/util/TypedValue;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroidx/appcompat/R$attr;->textColorSearchUrl:I

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    .line 340
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v5, v2

    iget v5, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v3, Landroidx/appcompat/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    .line 343
    .end local v2    # "colorValue":Landroid/util/TypedValue;
    :cond_0
    new-instance v3, Landroid/text/SpannableString;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v2, v3

    .line 344
    .local v2, "text":Landroid/text/SpannableString;
    move-object v3, v2

    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/SuggestionsAdapter;->mUrlColor:Landroid/content/res/ColorStateList;

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    const/4 v5, 0x0

    move-object v6, v1

    .line 345
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/16 v7, 0x21

    .line 344
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 347
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    return-object v0
.end method

.method private getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 12

    .prologue
    .line 647
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    move-object v1, p1

    .local v1, "component":Landroid/content/ComponentName;
    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    move-object v2, v7

    .line 650
    .local v2, "pm":Landroid/content/pm/PackageManager;
    move-object v7, v2

    move-object v8, v1

    const/16 v9, 0x80

    :try_start_0
    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v3, v7

    .line 654
    .line 655
    .local v3, "activityInfo":Landroid/content/pm/ActivityInfo;
    move-object v7, v3

    invoke-virtual {v7}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v7

    move v4, v7

    .line 656
    .local v4, "iconId":I
    move v7, v4

    if-nez v7, :cond_0

    const/4 v7, 0x0

    move-object v0, v7

    .line 664
    .end local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    .end local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v4    # "iconId":I
    :goto_0
    return-object v0

    .line 651
    .restart local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 652
    .local v4, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v7, "SuggestionsAdapter"

    move-object v8, v4

    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 653
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    .line 657
    .restart local v3    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .local v4, "iconId":I
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 658
    .local v5, "pkg":Ljava/lang/String;
    move-object v7, v2

    move-object v8, v5

    move v9, v4

    move-object v10, v3

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object v6, v7

    .line 659
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v7, v6

    if-nez v7, :cond_1

    .line 660
    const-string/jumbo v7, "SuggestionsAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid icon resource "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    .line 661
    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 660
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 662
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    .line 664
    :cond_1
    move-object v7, v6

    move-object v0, v7

    goto :goto_0
.end method

.method private getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    .line 625
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    move-object v1, p1

    .local v1, "component":Landroid/content/ComponentName;
    move-object v5, v1

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 627
    .local v2, "componentIconKey":Ljava/lang/String;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 628
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable$ConstantState;

    move-object v3, v5

    .line 629
    .local v3, "cached":Landroid/graphics/drawable/Drawable$ConstantState;
    move-object v5, v3

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v0, v5

    .line 636
    .end local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    .end local v3    # "cached":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_1
    return-object v0

    .line 629
    .restart local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    .restart local v3    # "cached":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_0

    .line 632
    .end local v3    # "cached":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Landroidx/appcompat/widget/SuggestionsAdapter;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v3, v5

    .line 634
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v5, v3

    if-nez v5, :cond_2

    const/4 v5, 0x0

    :goto_2
    move-object v4, v5

    .line 635
    .local v4, "toCache":Landroid/graphics/drawable/Drawable$ConstantState;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 636
    move-object v5, v3

    move-object v0, v5

    goto :goto_1

    .line 634
    .end local v4    # "toCache":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_2
    move-object v5, v3

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    goto :goto_2
.end method

.method public static getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 676
    move-object v0, p0

    .local v0, "cursor":Landroid/database/Cursor;
    move-object v1, p1

    .local v1, "columnName":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    .line 677
    .local v2, "col":I
    move-object v3, v0

    move v4, v2

    invoke-static {v3, v4}, Landroidx/appcompat/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "cursor":Landroid/database/Cursor;
    return-object v0
.end method

.method private getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 606
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    move-object v1, p1

    .local v1, "cursor":Landroid/database/Cursor;
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v4}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/appcompat/widget/SuggestionsAdapter;->getActivityIconWithCache(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 607
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 608
    move-object v3, v2

    move-object v0, v3

    .line 612
    .end local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method private getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 13

    .prologue
    .line 550
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    move-object v1, p1

    .local v1, "uri":Landroid/net/Uri;
    move-object v8, v1

    :try_start_0
    invoke-virtual {v8}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 551
    .local v2, "scheme":Ljava/lang/String;
    const-string/jumbo v8, "android.resource"

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-eqz v8, :cond_0

    .line 554
    move-object v8, v0

    move-object v9, v1

    :try_start_1
    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/SuggestionsAdapter;->getDrawableFromResourceUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    move-object v0, v8

    .line 576
    .end local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    .end local v2    # "scheme":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 555
    .restart local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    .restart local v2    # "scheme":Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 556
    .local v3, "ex":Landroid/content/res/Resources$NotFoundException;
    :try_start_2
    new-instance v8, Ljava/io/FileNotFoundException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Resource does not exist: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 574
    .end local v2    # "scheme":Ljava/lang/String;
    .end local v3    # "ex":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 575
    .local v2, "fnfe":Ljava/io/FileNotFoundException;
    const-string/jumbo v8, "SuggestionsAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Icon not found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 576
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    .line 560
    .local v2, "scheme":Ljava/lang/String;
    :cond_0
    move-object v8, v0

    :try_start_3
    iget-object v8, v8, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    move-object v3, v8

    .line 561
    .local v3, "stream":Ljava/io/InputStream;
    move-object v8, v3

    if-nez v8, :cond_1

    .line 562
    new-instance v8, Ljava/io/FileNotFoundException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to open "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 565
    :cond_1
    move-object v8, v3

    const/4 v9, 0x0

    :try_start_4
    invoke-static {v8, v9}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v8

    move-object v4, v8

    .line 568
    move-object v8, v3

    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    .line 571
    :goto_1
    move-object v8, v4

    move-object v0, v8

    goto/16 :goto_0

    .line 569
    :catch_2
    move-exception v8

    move-object v5, v8

    .line 570
    .local v5, "ex":Ljava/io/IOException;
    :try_start_6
    const-string/jumbo v8, "SuggestionsAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error closing icon stream for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v5

    invoke-static {v8, v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    move-result v8

    goto :goto_1

    .line 567
    .end local v5    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    move-object v6, v8

    .line 568
    move-object v8, v3

    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    .line 571
    :goto_2
    move-object v8, v6

    :try_start_8
    throw v8

    .line 569
    :catch_3
    move-exception v8

    move-object v7, v8

    .line 570
    .local v7, "ex":Ljava/io/IOException;
    const-string/jumbo v8, "SuggestionsAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error closing icon stream for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v7

    invoke-static {v8, v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1

    move-result v8

    goto :goto_2
.end method

.method private getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    move-object v1, p1

    .local v1, "drawableId":Ljava/lang/String;
    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "0"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 508
    :cond_0
    const/4 v5, 0x0

    move-object v0, v5

    .line 539
    .end local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    :goto_0
    return-object v0

    .line 512
    .restart local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    :cond_1
    move-object v5, v1

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v2, v5

    .line 514
    .local v2, "resourceId":I
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "android.resource://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    .line 515
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 517
    .local v3, "drawableUri":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v3

    invoke-direct {v5, v6}, Landroidx/appcompat/widget/SuggestionsAdapter;->checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v4, v5

    .line 518
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 519
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 522
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SuggestionsAdapter;->mProviderContext:Landroid/content/Context;

    move v6, v2

    invoke-static {v5, v6}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v4, v5

    .line 524
    move-object v5, v0

    move-object v6, v3

    move-object v7, v4

    invoke-direct {v5, v6, v7}, Landroidx/appcompat/widget/SuggestionsAdapter;->storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 525
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    .line 526
    .end local v2    # "resourceId":I
    .end local v3    # "drawableUri":Ljava/lang/String;
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 528
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Landroidx/appcompat/widget/SuggestionsAdapter;->checkIconCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v3, v5

    .line 529
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v5, v3

    if-eqz v5, :cond_3

    .line 530
    move-object v5, v3

    move-object v0, v5

    goto :goto_0

    .line 532
    :cond_3
    move-object v5, v1

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object v4, v5

    .line 533
    .local v4, "uri":Landroid/net/Uri;
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Landroidx/appcompat/widget/SuggestionsAdapter;->getDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v3, v5

    .line 534
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Landroidx/appcompat/widget/SuggestionsAdapter;->storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 535
    move-object v5, v3

    move-object v0, v5

    goto :goto_0

    .line 536
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 538
    .local v2, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v5, "SuggestionsAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Icon resource not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 539
    const/4 v5, 0x0

    move-object v0, v5

    goto/16 :goto_0
.end method

.method private getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 362
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    move-object v1, p1

    .local v1, "cursor":Landroid/database/Cursor;
    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/widget/SuggestionsAdapter;->mIconName1Col:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 363
    const/4 v4, 0x0

    move-object v0, v4

    .line 370
    .end local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    :goto_0
    return-object v0

    .line 365
    .restart local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    :cond_0
    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Landroidx/appcompat/widget/SuggestionsAdapter;->mIconName1Col:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 366
    .local v2, "value":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/SuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v3, v4

    .line 367
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 368
    move-object v4, v3

    move-object v0, v4

    goto :goto_0

    .line 370
    :cond_1
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/SuggestionsAdapter;->getDefaultIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method private getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    move-object v1, p1

    .local v1, "cursor":Landroid/database/Cursor;
    move-object v3, v0

    iget v3, v3, Landroidx/appcompat/widget/SuggestionsAdapter;->mIconName2Col:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 375
    const/4 v3, 0x0

    move-object v0, v3

    .line 378
    .end local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    :goto_0
    return-object v0

    .line 377
    .restart local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    :cond_0
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroidx/appcompat/widget/SuggestionsAdapter;->mIconName2Col:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 378
    .local v2, "value":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroidx/appcompat/widget/SuggestionsAdapter;->getDrawableFromResourceValue(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method private static getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 6

    .prologue
    .line 681
    move-object v0, p0

    .local v0, "cursor":Landroid/database/Cursor;
    move v1, p1

    .local v1, "col":I
    move v3, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 682
    const/4 v3, 0x0

    move-object v0, v3

    .line 690
    .end local v0    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v0

    .line 685
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_0
    move-object v3, v0

    move v4, v1

    :try_start_0
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 686
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 687
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SuggestionsAdapter"

    const-string/jumbo v4, "unexpected error retrieving valid column from cursor, did the remote process die?"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 690
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method private setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V
    .locals 7

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    move-object v1, p1

    .local v1, "v":Landroid/widget/ImageView;
    move-object v2, p2

    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    move v3, p3

    .local v3, "nullVisibility":I
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    move-object v4, v2

    if-nez v4, :cond_0

    .line 391
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 403
    :goto_0
    return-void

    .line 393
    :cond_0
    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 400
    move-object v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v4

    .line 401
    move-object v4, v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v4

    goto :goto_0
.end method

.method private setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 5

    .prologue
    .line 352
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    move-object v1, p1

    .local v1, "v":Landroid/widget/TextView;
    move-object v2, p2

    .local v2, "text":Ljava/lang/CharSequence;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    move-object v3, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 355
    move-object v3, v1

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    :goto_0
    return-void

    .line 357
    :cond_0
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private storeInIconCache(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    .line 592
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    move-object v1, p1

    .local v1, "resourceUri":Ljava/lang/String;
    move-object v2, p2

    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 593
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SuggestionsAdapter;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 595
    :cond_0
    return-void
.end method

.method private updateSpinnerState(Landroid/database/Cursor;)V
    .locals 5

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    move-object v1, p1

    .local v1, "cursor":Landroid/database/Cursor;
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    :goto_0
    move-object v2, v3

    .line 203
    .local v2, "extras":Landroid/os/Bundle;
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    const-string/jumbo v4, "in_progress"

    .line 204
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 205
    .line 208
    :goto_1
    return-void

    .line 195
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 208
    .restart local v2    # "extras":Landroid/os/Bundle;
    :cond_1
    goto :goto_1
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "context":Landroid/content/Context;
    move-object v3, p3

    .local v3, "cursor":Landroid/database/Cursor;
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;

    move-object v4, v7

    .line 277
    .local v4, "views":Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;
    const/4 v7, 0x0

    move v5, v7

    .line 278
    .local v5, "flags":I
    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/SuggestionsAdapter;->mFlagsCol:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 279
    move-object v7, v3

    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/widget/SuggestionsAdapter;->mFlagsCol:I

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move v5, v7

    .line 281
    :cond_0
    move-object v7, v4

    iget-object v7, v7, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v7, :cond_1

    .line 282
    move-object v7, v3

    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/widget/SuggestionsAdapter;->mText1Col:I

    invoke-static {v7, v8}, Landroidx/appcompat/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 283
    .local v6, "text1":Ljava/lang/String;
    move-object v7, v0

    move-object v8, v4

    iget-object v8, v8, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object v9, v6

    invoke-direct {v7, v8, v9}, Landroidx/appcompat/widget/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 285
    .end local v6    # "text1":Ljava/lang/String;
    :cond_1
    move-object v7, v4

    iget-object v7, v7, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    if-eqz v7, :cond_3

    .line 287
    move-object v7, v3

    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/widget/SuggestionsAdapter;->mText2UrlCol:I

    invoke-static {v7, v8}, Landroidx/appcompat/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 288
    .local v6, "text2":Ljava/lang/CharSequence;
    move-object v7, v6

    if-eqz v7, :cond_7

    .line 289
    move-object v7, v0

    move-object v8, v6

    invoke-direct {v7, v8}, Landroidx/appcompat/widget/SuggestionsAdapter;->formatUrl(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v6, v7

    .line 296
    :goto_0
    move-object v7, v6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 297
    move-object v7, v4

    iget-object v7, v7, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 298
    move-object v7, v4

    iget-object v7, v7, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 299
    move-object v7, v4

    iget-object v7, v7, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 307
    :cond_2
    :goto_1
    move-object v7, v0

    move-object v8, v4

    iget-object v8, v8, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText2:Landroid/widget/TextView;

    move-object v9, v6

    invoke-direct {v7, v8, v9}, Landroidx/appcompat/widget/SuggestionsAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 310
    .end local v6    # "text2":Ljava/lang/CharSequence;
    :cond_3
    move-object v7, v4

    iget-object v7, v7, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    if-eqz v7, :cond_4

    .line 311
    move-object v7, v0

    move-object v8, v4

    iget-object v8, v8, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIcon1:Landroid/widget/ImageView;

    move-object v9, v0

    move-object v10, v3

    invoke-direct {v9, v10}, Landroidx/appcompat/widget/SuggestionsAdapter;->getIcon1(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v10, 0x4

    invoke-direct {v7, v8, v9, v10}, Landroidx/appcompat/widget/SuggestionsAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    .line 313
    :cond_4
    move-object v7, v4

    iget-object v7, v7, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    if-eqz v7, :cond_5

    .line 314
    move-object v7, v0

    move-object v8, v4

    iget-object v8, v8, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIcon2:Landroid/widget/ImageView;

    move-object v9, v0

    move-object v10, v3

    invoke-direct {v9, v10}, Landroidx/appcompat/widget/SuggestionsAdapter;->getIcon2(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/16 v10, 0x8

    invoke-direct {v7, v8, v9, v10}, Landroidx/appcompat/widget/SuggestionsAdapter;->setViewDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V

    .line 316
    :cond_5
    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/SuggestionsAdapter;->mQueryRefinement:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_6

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/SuggestionsAdapter;->mQueryRefinement:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    move v7, v5

    const/4 v8, 0x1

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_9

    .line 319
    :cond_6
    move-object v7, v4

    iget-object v7, v7, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    move-object v7, v4

    iget-object v7, v7, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    move-object v8, v4

    iget-object v8, v8, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 321
    move-object v7, v4

    iget-object v7, v7, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    move-object v8, v0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    :goto_2
    return-void

    .line 291
    .restart local v6    # "text2":Ljava/lang/CharSequence;
    :cond_7
    move-object v7, v3

    move-object v8, v0

    iget v8, v8, Landroidx/appcompat/widget/SuggestionsAdapter;->mText2Col:I

    invoke-static {v7, v8}, Landroidx/appcompat/widget/SuggestionsAdapter;->getStringOrNull(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    goto :goto_0

    .line 302
    :cond_8
    move-object v7, v4

    iget-object v7, v7, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 303
    move-object v7, v4

    iget-object v7, v7, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 304
    move-object v7, v4

    iget-object v7, v7, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_1

    .line 323
    .end local v6    # "text2":Ljava/lang/CharSequence;
    :cond_9
    move-object v7, v4

    iget-object v7, v7, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mIconRefine:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 6

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    move-object v1, p1

    .local v1, "c":Landroid/database/Cursor;
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/widget/SuggestionsAdapter;->mClosed:Z

    if-eqz v3, :cond_1

    .line 218
    const-string/jumbo v3, "SuggestionsAdapter"

    const-string/jumbo v4, "Tried to change cursor after adapter was closed."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 219
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 220
    .line 237
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-super {v3, v4}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 226
    move-object v3, v1

    if-eqz v3, :cond_2

    .line 227
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "suggest_text_1"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroidx/appcompat/widget/SuggestionsAdapter;->mText1Col:I

    .line 228
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "suggest_text_2"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroidx/appcompat/widget/SuggestionsAdapter;->mText2Col:I

    .line 229
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "suggest_text_2_url"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroidx/appcompat/widget/SuggestionsAdapter;->mText2UrlCol:I

    .line 230
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "suggest_icon_1"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroidx/appcompat/widget/SuggestionsAdapter;->mIconName1Col:I

    .line 231
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "suggest_icon_2"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroidx/appcompat/widget/SuggestionsAdapter;->mIconName2Col:I

    .line 232
    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "suggest_flags"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroidx/appcompat/widget/SuggestionsAdapter;->mFlagsCol:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .line 237
    :cond_2
    :goto_1
    goto :goto_0

    .line 234
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 235
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "SuggestionsAdapter"

    const-string/jumbo v4, "error changing cursor and caching columns"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_1
.end method

.method public close()V
    .locals 3

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 175
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/widget/SuggestionsAdapter;->mClosed:Z

    .line 176
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 415
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    move-object v1, p1

    .local v1, "cursor":Landroid/database/Cursor;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 416
    const/4 v4, 0x0

    move-object v0, v4

    .line 438
    .end local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    :goto_0
    return-object v0

    .line 419
    .restart local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    :cond_0
    move-object v4, v1

    const-string/jumbo v5, "suggest_intent_query"

    invoke-static {v4, v5}, Landroidx/appcompat/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 420
    .local v2, "query":Ljava/lang/String;
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 421
    move-object v4, v2

    move-object v0, v4

    goto :goto_0

    .line 424
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v4}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromData()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 425
    move-object v4, v1

    const-string/jumbo v5, "suggest_intent_data"

    invoke-static {v4, v5}, Landroidx/appcompat/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 426
    .local v3, "data":Ljava/lang/String;
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 427
    move-object v4, v3

    move-object v0, v4

    goto :goto_0

    .line 431
    .end local v3    # "data":Ljava/lang/String;
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v4}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromText()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 432
    move-object v4, v1

    const-string/jumbo v5, "suggest_text_1"

    invoke-static {v4, v5}, Landroidx/appcompat/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 433
    .local v3, "text1":Ljava/lang/String;
    move-object v4, v3

    if-eqz v4, :cond_3

    .line 434
    move-object v4, v3

    move-object v0, v4

    goto :goto_0

    .line 438
    .end local v3    # "text1":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method getDrawableFromResourceUri(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 699
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    move-object v1, p1

    .local v1, "uri":Landroid/net/Uri;
    move-object v8, v1

    invoke-virtual {v8}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 701
    .local v2, "authority":Ljava/lang/String;
    move-object v8, v2

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 702
    new-instance v8, Ljava/io/FileNotFoundException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "No authority: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 705
    :cond_0
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Landroidx/appcompat/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v3, v8

    .line 708
    .line 710
    .local v3, "r":Landroid/content/res/Resources;
    move-object v8, v1

    invoke-virtual {v8}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v8

    move-object v4, v8

    .line 711
    .local v4, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v8, v4

    if-nez v8, :cond_1

    .line 712
    new-instance v8, Ljava/io/FileNotFoundException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "No path: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 706
    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v4    # "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 707
    .local v4, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v8, Ljava/io/FileNotFoundException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "No package found for authority: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 714
    .restart local v3    # "r":Landroid/content/res/Resources;
    .local v4, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v5, v8

    .line 716
    .local v5, "len":I
    move v8, v5

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 718
    move-object v8, v4

    const/4 v9, 0x0

    :try_start_1
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    move v6, v8

    .line 721
    .line 727
    .local v6, "id":I
    :goto_0
    move v8, v6

    if-nez v8, :cond_4

    .line 728
    new-instance v8, Ljava/io/FileNotFoundException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "No resource found for: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 719
    .end local v6    # "id":I
    :catch_1
    move-exception v8

    move-object v7, v8

    .line 720
    .local v7, "e":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/io/FileNotFoundException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Single path segment is not a resource ID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 722
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    move v8, v5

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 723
    move-object v8, v3

    move-object v9, v4

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v10, v4

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object v11, v2

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    move v6, v8

    .restart local v6    # "id":I
    goto :goto_0

    .line 725
    .end local v6    # "id":I
    :cond_3
    new-instance v8, Ljava/io/FileNotFoundException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "More than two path segments: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 730
    .restart local v6    # "id":I
    :cond_4
    move-object v8, v3

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    return-object v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .prologue
    .line 473
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    move v1, p1

    .local v1, "position":I
    move-object v2, p2

    .local v2, "convertView":Landroid/view/View;
    move-object v3, p3

    .local v3, "parent":Landroid/view/ViewGroup;
    move-object v8, v0

    move v9, v1

    move-object v10, v2

    move-object v11, v3

    :try_start_0
    invoke-super {v8, v9, v10, v11}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v0, v8

    .line 483
    .end local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    :goto_0
    return-object v0

    .line 474
    .restart local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 475
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v8, "SuggestionsAdapter"

    const-string/jumbo v9, "Search suggestions cursor threw exception."

    move-object v10, v4

    invoke-static {v8, v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v8

    .line 477
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    move-object v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroidx/appcompat/widget/SuggestionsAdapter;->newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    .line 478
    .local v5, "v":Landroid/view/View;
    move-object v8, v5

    if-eqz v8, :cond_0

    .line 479
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;

    move-object v6, v8

    .line 480
    .local v6, "views":Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;
    move-object v8, v6

    iget-object v8, v8, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object v7, v8

    .line 481
    .local v7, "tv":Landroid/widget/TextView;
    move-object v8, v7

    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    .end local v6    # "views":Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;
    .end local v7    # "tv":Landroid/widget/TextView;
    :cond_0
    move-object v8, v5

    move-object v0, v8

    goto :goto_0
.end method

.method public getQueryRefinement()I
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/SuggestionsAdapter;->mQueryRefinement:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    return v0
.end method

.method getSearchManagerSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 17

    .prologue
    .line 737
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    move-object/from16 v1, p1

    .local v1, "searchable":Landroid/app/SearchableInfo;
    move-object/from16 v2, p2

    .local v2, "query":Ljava/lang/String;
    move/from16 v3, p3

    .local v3, "limit":I
    move-object v10, v1

    if-nez v10, :cond_0

    .line 738
    const/4 v10, 0x0

    move-object v0, v10

    .line 778
    .end local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    :goto_0
    return-object v0

    .line 741
    .restart local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    :cond_0
    move-object v10, v1

    invoke-virtual {v10}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    .line 742
    .local v4, "authority":Ljava/lang/String;
    move-object v10, v4

    if-nez v10, :cond_1

    .line 743
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_0

    .line 746
    :cond_1
    new-instance v10, Landroid/net/Uri$Builder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v11, "content"

    .line 747
    invoke-virtual {v10, v11}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    move-object v11, v4

    .line 748
    invoke-virtual {v10, v11}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    const-string/jumbo v11, ""

    .line 749
    invoke-virtual {v10, v11}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    const-string/jumbo v11, ""

    .line 750
    invoke-virtual {v10, v11}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    move-object v5, v10

    .line 753
    .local v5, "uriBuilder":Landroid/net/Uri$Builder;
    move-object v10, v1

    invoke-virtual {v10}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 754
    .local v6, "contentPath":Ljava/lang/String;
    move-object v10, v6

    if-eqz v10, :cond_2

    .line 755
    move-object v10, v5

    move-object v11, v6

    invoke-virtual {v10, v11}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    .line 759
    :cond_2
    move-object v10, v5

    const-string/jumbo v11, "search_suggest_query"

    invoke-virtual {v10, v11}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    .line 762
    move-object v10, v1

    invoke-virtual {v10}, Landroid/app/SearchableInfo;->getSuggestSelection()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 764
    .local v7, "selection":Ljava/lang/String;
    const/4 v10, 0x0

    move-object v8, v10

    .line 765
    .local v8, "selArgs":[Ljava/lang/String;
    move-object v10, v7

    if-eqz v10, :cond_4

    .line 766
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x0

    move-object v13, v2

    aput-object v13, v11, v12

    move-object v8, v10

    .line 771
    :goto_1
    move v10, v3

    if-lez v10, :cond_3

    .line 772
    move-object v10, v5

    const-string/jumbo v11, "limit"

    move v12, v3

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    .line 775
    :cond_3
    move-object v10, v5

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    move-object v9, v10

    .line 778
    .local v9, "uri":Landroid/net/Uri;
    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    move-object v11, v9

    const/4 v12, 0x0

    move-object v13, v7

    move-object v14, v8

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object v0, v10

    goto/16 :goto_0

    .line 768
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_4
    move-object v10, v5

    move-object v11, v2

    invoke-virtual {v10, v11}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    .prologue
    .line 450
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    move v1, p1

    .local v1, "position":I
    move-object v2, p2

    .local v2, "convertView":Landroid/view/View;
    move-object v3, p3

    .local v3, "parent":Landroid/view/ViewGroup;
    move-object v8, v0

    move v9, v1

    move-object v10, v2

    move-object v11, v3

    :try_start_0
    invoke-super {v8, v9, v10, v11}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v0, v8

    .line 460
    .end local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    :goto_0
    return-object v0

    .line 451
    .restart local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 452
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v8, "SuggestionsAdapter"

    const-string/jumbo v9, "Search suggestions cursor threw exception."

    move-object v10, v4

    invoke-static {v8, v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v8

    .line 454
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/SuggestionsAdapter;->mContext:Landroid/content/Context;

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/SuggestionsAdapter;->mCursor:Landroid/database/Cursor;

    move-object v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroidx/appcompat/widget/SuggestionsAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    .line 455
    .local v5, "v":Landroid/view/View;
    move-object v8, v5

    if-eqz v8, :cond_0

    .line 456
    move-object v8, v5

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;

    move-object v6, v8

    .line 457
    .local v6, "views":Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;
    move-object v8, v6

    iget-object v8, v8, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;->mText1:Landroid/widget/TextView;

    move-object v7, v8

    .line 458
    .local v7, "tv":Landroid/widget/TextView;
    move-object v8, v7

    move-object v9, v4

    invoke-virtual {v9}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    .end local v6    # "views":Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;
    .end local v7    # "tv":Landroid/widget/TextView;
    :cond_0
    move-object v8, v5

    move-object v0, v8

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "cursor":Landroid/database/Cursor;
    move-object v3, p3

    .local v3, "parent":Landroid/view/ViewGroup;
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-super {v6, v7, v8, v9}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 245
    .local v4, "v":Landroid/view/View;
    move-object v6, v4

    new-instance v7, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v4

    invoke-direct {v8, v9}, Landroidx/appcompat/widget/SuggestionsAdapter$ChildViewCache;-><init>(Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 248
    move-object v6, v4

    sget v7, Landroidx/appcompat/R$id;->edit_query:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    move-object v5, v6

    .line 249
    .local v5, "iconRefine":Landroid/widget/ImageView;
    move-object v6, v5

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/SuggestionsAdapter;->mCommitIconResId:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    move-object v6, v4

    move-object v0, v6

    .end local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    move-object v1, v0

    invoke-super {v1}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->notifyDataSetChanged()V

    .line 183
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter;->updateSpinnerState(Landroid/database/Cursor;)V

    .line 184
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 3

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    move-object v1, v0

    invoke-super {v1}, Landroidx/cursoradapter/widget/ResourceCursorAdapter;->notifyDataSetInvalidated()V

    .line 191
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SuggestionsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter;->updateSpinnerState(Landroid/database/Cursor;)V

    .line 192
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 330
    .local v2, "tag":Ljava/lang/Object;
    move-object v3, v2

    instance-of v3, v3, Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 331
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchView:Landroidx/appcompat/widget/SearchView;

    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/SearchView;->onQueryRefine(Ljava/lang/CharSequence;)V

    .line 333
    :cond_0
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 9

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    move-object v1, p1

    .local v1, "constraint":Ljava/lang/CharSequence;
    move-object v5, v1

    if-nez v5, :cond_1

    const-string/jumbo v5, ""

    :goto_0
    move-object v2, v5

    .line 151
    .local v2, "query":Ljava/lang/String;
    const/4 v5, 0x0

    move-object v3, v5

    .line 152
    .local v3, "cursor":Landroid/database/Cursor;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v5}, Landroidx/appcompat/widget/SearchView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchView:Landroidx/appcompat/widget/SearchView;

    .line 153
    invoke-virtual {v5}, Landroidx/appcompat/widget/SearchView;->getWindowVisibility()I

    move-result v5

    if-eqz v5, :cond_2

    .line 154
    :cond_0
    const/4 v5, 0x0

    move-object v0, v5

    .line 169
    .end local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    :goto_1
    return-object v0

    .line 146
    .end local v2    # "query":Ljava/lang/String;
    .end local v3    # "cursor":Landroid/database/Cursor;
    .restart local v0    # "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    :cond_1
    move-object v5, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 157
    .restart local v2    # "query":Ljava/lang/String;
    .restart local v3    # "cursor":Landroid/database/Cursor;
    :cond_2
    move-object v5, v0

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Landroidx/appcompat/widget/SuggestionsAdapter;->mSearchable:Landroid/app/SearchableInfo;

    move-object v7, v2

    const/16 v8, 0x32

    invoke-virtual {v5, v6, v7, v8}, Landroidx/appcompat/widget/SuggestionsAdapter;->getSearchManagerSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v5

    move-object v3, v5

    .line 160
    move-object v5, v3

    if-eqz v5, :cond_3

    .line 161
    move-object v5, v3

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 162
    move-object v5, v3

    move-object v0, v5

    goto :goto_1

    .line 166
    .line 169
    :cond_3
    :goto_2
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1

    .line 164
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 165
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "SuggestionsAdapter"

    const-string/jumbo v6, "Search suggestions query threw an exception."

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v5

    goto :goto_2
.end method

.method public setQueryRefinement(I)V
    .locals 4

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SuggestionsAdapter;
    move v1, p1

    .local v1, "refineWhat":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/SuggestionsAdapter;->mQueryRefinement:I

    .line 119
    return-void
.end method
