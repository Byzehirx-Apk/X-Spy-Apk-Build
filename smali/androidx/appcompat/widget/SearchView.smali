.class public Landroidx/appcompat/widget/SearchView;
.super Landroidx/appcompat/widget/LinearLayoutCompat;
.source "SearchView.java"

# interfaces
.implements Landroidx/appcompat/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;,
        Landroidx/appcompat/widget/SearchView$SearchAutoComplete;,
        Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;,
        Landroidx/appcompat/widget/SearchView$SavedState;,
        Landroidx/appcompat/widget/SearchView$OnSuggestionListener;,
        Landroidx/appcompat/widget/SearchView$OnCloseListener;,
        Landroidx/appcompat/widget/SearchView$OnQueryTextListener;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field static final HIDDEN_METHOD_INVOKER:Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field static final LOG_TAG:Ljava/lang/String; = "SearchView"


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private mClearingFocus:Z

.field final mCloseButton:Landroid/widget/ImageView;

.field private final mCollapsedIcon:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private final mDefaultQueryHint:Ljava/lang/CharSequence;

.field private final mDropDownAnchor:Landroid/view/View;

.field private mExpandedInActionView:Z

.field final mGoButton:Landroid/widget/ImageView;

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Landroidx/appcompat/widget/SearchView$OnCloseListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

.field mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private mOnSuggestionListener:Landroidx/appcompat/widget/SearchView$OnSuggestionListener;

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

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private mReleaseCursorRunnable:Ljava/lang/Runnable;

.field final mSearchButton:Landroid/widget/ImageView;

.field private final mSearchEditFrame:Landroid/view/View;

.field private final mSearchHintIcon:Landroid/graphics/drawable/Drawable;

.field private final mSearchPlate:Landroid/view/View;

.field final mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

.field private mSearchSrcTextViewBounds:Landroid/graphics/Rect;

.field private mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

.field mSearchable:Landroid/app/SearchableInfo;

.field private final mSubmitArea:Landroid/view/View;

.field private mSubmitButtonEnabled:Z

.field private final mSuggestionCommitIconResId:I

.field private final mSuggestionRowLayout:I

.field mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

.field private mTemp:[I

.field private mTemp2:[I

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mTouchDelegate:Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;

.field private final mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field final mVoiceButton:Landroid/widget/ImageView;

.field private mVoiceButtonEnabled:Z

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 175
    new-instance v0, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 267
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    sget v6, Landroidx/appcompat/R$attr;->searchViewStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 271
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17

    .prologue
    .line 274
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object/from16 v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object/from16 v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move/from16 v3, p3

    .local v3, "defStyleAttr":I
    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move v14, v3

    invoke-direct {v11, v12, v13, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    move-object v11, v0

    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, v11, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    .line 132
    move-object v11, v0

    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    iput-object v12, v11, Landroidx/appcompat/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    .line 133
    move-object v11, v0

    const/4 v12, 0x2

    new-array v12, v12, [I

    iput-object v12, v11, Landroidx/appcompat/widget/SearchView;->mTemp:[I

    .line 134
    move-object v11, v0

    const/4 v12, 0x2

    new-array v12, v12, [I

    iput-object v12, v11, Landroidx/appcompat/widget/SearchView;->mTemp2:[I

    .line 177
    move-object v11, v0

    new-instance v12, Landroidx/appcompat/widget/SearchView$1;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroidx/appcompat/widget/SearchView$1;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v12, v11, Landroidx/appcompat/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    .line 184
    move-object v11, v0

    new-instance v12, Landroidx/appcompat/widget/SearchView$2;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroidx/appcompat/widget/SearchView$2;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v12, v11, Landroidx/appcompat/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    .line 195
    move-object v11, v0

    new-instance v12, Ljava/util/WeakHashMap;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v12, v11, Landroidx/appcompat/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 975
    move-object v11, v0

    new-instance v12, Landroidx/appcompat/widget/SearchView$5;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroidx/appcompat/widget/SearchView$5;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v12, v11, Landroidx/appcompat/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 997
    move-object v11, v0

    new-instance v12, Landroidx/appcompat/widget/SearchView$6;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroidx/appcompat/widget/SearchView$6;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v12, v11, Landroidx/appcompat/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    .line 1160
    move-object v11, v0

    new-instance v12, Landroidx/appcompat/widget/SearchView$7;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroidx/appcompat/widget/SearchView$7;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v12, v11, Landroidx/appcompat/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 1406
    move-object v11, v0

    new-instance v12, Landroidx/appcompat/widget/SearchView$8;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroidx/appcompat/widget/SearchView$8;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v12, v11, Landroidx/appcompat/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1418
    move-object v11, v0

    new-instance v12, Landroidx/appcompat/widget/SearchView$9;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroidx/appcompat/widget/SearchView$9;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v12, v11, Landroidx/appcompat/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1708
    move-object v11, v0

    new-instance v12, Landroidx/appcompat/widget/SearchView$10;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroidx/appcompat/widget/SearchView$10;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v12, v11, Landroidx/appcompat/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 276
    move-object v11, v1

    move-object v12, v2

    sget-object v13, Landroidx/appcompat/R$styleable;->SearchView:[I

    move v14, v3

    const/4 v15, 0x0

    invoke-static {v11, v12, v13, v14, v15}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object v11

    move-object v4, v11

    .line 279
    .local v4, "a":Landroidx/appcompat/widget/TintTypedArray;
    move-object v11, v1

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    move-object v5, v11

    .line 280
    .local v5, "inflater":Landroid/view/LayoutInflater;
    move-object v11, v4

    sget v12, Landroidx/appcompat/R$styleable;->SearchView_layout:I

    sget v13, Landroidx/appcompat/R$layout;->abc_search_view:I

    invoke-virtual {v11, v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v11

    move v6, v11

    .line 282
    .local v6, "layoutResId":I
    move-object v11, v5

    move v12, v6

    move-object v13, v0

    const/4 v14, 0x1

    invoke-virtual {v11, v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 284
    move-object v11, v0

    move-object v12, v0

    sget v13, Landroidx/appcompat/R$id;->search_src_text:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iput-object v12, v11, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 285
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-object v12, v0

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSearchView(Landroidx/appcompat/widget/SearchView;)V

    .line 287
    move-object v11, v0

    move-object v12, v0

    sget v13, Landroidx/appcompat/R$id;->search_edit_frame:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, v11, Landroidx/appcompat/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    .line 288
    move-object v11, v0

    move-object v12, v0

    sget v13, Landroidx/appcompat/R$id;->search_plate:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, v11, Landroidx/appcompat/widget/SearchView;->mSearchPlate:Landroid/view/View;

    .line 289
    move-object v11, v0

    move-object v12, v0

    sget v13, Landroidx/appcompat/R$id;->submit_area:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, v11, Landroidx/appcompat/widget/SearchView;->mSubmitArea:Landroid/view/View;

    .line 290
    move-object v11, v0

    move-object v12, v0

    sget v13, Landroidx/appcompat/R$id;->search_button:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v11, Landroidx/appcompat/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    .line 291
    move-object v11, v0

    move-object v12, v0

    sget v13, Landroidx/appcompat/R$id;->search_go_btn:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v11, Landroidx/appcompat/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    .line 292
    move-object v11, v0

    move-object v12, v0

    sget v13, Landroidx/appcompat/R$id;->search_close_btn:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v11, Landroidx/appcompat/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    .line 293
    move-object v11, v0

    move-object v12, v0

    sget v13, Landroidx/appcompat/R$id;->search_voice_btn:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v11, Landroidx/appcompat/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    .line 294
    move-object v11, v0

    move-object v12, v0

    sget v13, Landroidx/appcompat/R$id;->search_mag_icon:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v11, Landroidx/appcompat/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    .line 297
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/SearchView;->mSearchPlate:Landroid/view/View;

    move-object v12, v4

    sget v13, Landroidx/appcompat/R$styleable;->SearchView_queryBackground:I

    .line 298
    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 297
    invoke-static {v11, v12}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 299
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/SearchView;->mSubmitArea:Landroid/view/View;

    move-object v12, v4

    sget v13, Landroidx/appcompat/R$styleable;->SearchView_submitBackground:I

    .line 300
    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 299
    invoke-static {v11, v12}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 301
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    move-object v12, v4

    sget v13, Landroidx/appcompat/R$styleable;->SearchView_searchIcon:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    move-object v12, v4

    sget v13, Landroidx/appcompat/R$styleable;->SearchView_goIcon:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    move-object v12, v4

    sget v13, Landroidx/appcompat/R$styleable;->SearchView_closeIcon:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    move-object v12, v4

    sget v13, Landroidx/appcompat/R$styleable;->SearchView_voiceIcon:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    move-object v12, v4

    sget v13, Landroidx/appcompat/R$styleable;->SearchView_searchIcon:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    move-object v11, v0

    move-object v12, v4

    sget v13, Landroidx/appcompat/R$styleable;->SearchView_searchHintIcon:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    iput-object v12, v11, Landroidx/appcompat/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    .line 309
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    move-object v12, v0

    .line 310
    invoke-virtual {v12}, Landroidx/appcompat/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Landroidx/appcompat/R$string;->abc_searchview_description_search:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 309
    invoke-static {v11, v12}, Landroidx/appcompat/widget/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 313
    move-object v11, v0

    move-object v12, v4

    sget v13, Landroidx/appcompat/R$styleable;->SearchView_suggestionRowLayout:I

    sget v14, Landroidx/appcompat/R$layout;->abc_search_dropdown_item_icons_2line:I

    invoke-virtual {v12, v13, v14}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v12

    iput v12, v11, Landroidx/appcompat/widget/SearchView;->mSuggestionRowLayout:I

    .line 315
    move-object v11, v0

    move-object v12, v4

    sget v13, Landroidx/appcompat/R$styleable;->SearchView_commitIcon:I

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroidx/appcompat/widget/TintTypedArray;->getResourceId(II)I

    move-result v12

    iput v12, v11, Landroidx/appcompat/widget/SearchView;->mSuggestionCommitIconResId:I

    .line 317
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 324
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 325
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 326
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 327
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-object v12, v0

    iget-object v12, v12, Landroidx/appcompat/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 330
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    new-instance v12, Landroidx/appcompat/widget/SearchView$3;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroidx/appcompat/widget/SearchView$3;-><init>(Landroidx/appcompat/widget/SearchView;)V

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 338
    move-object v11, v0

    move-object v12, v4

    sget v13, Landroidx/appcompat/R$styleable;->SearchView_iconifiedByDefault:I

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v12

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 340
    move-object v11, v4

    sget v12, Landroidx/appcompat/R$styleable;->SearchView_android_maxWidth:I

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move v7, v11

    .line 341
    .local v7, "maxWidth":I
    move v11, v7

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    .line 342
    move-object v11, v0

    move v12, v7

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    .line 345
    :cond_0
    move-object v11, v0

    move-object v12, v4

    sget v13, Landroidx/appcompat/R$styleable;->SearchView_defaultQueryHint:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v11, Landroidx/appcompat/widget/SearchView;->mDefaultQueryHint:Ljava/lang/CharSequence;

    .line 346
    move-object v11, v0

    move-object v12, v4

    sget v13, Landroidx/appcompat/R$styleable;->SearchView_queryHint:I

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    iput-object v12, v11, Landroidx/appcompat/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 348
    move-object v11, v4

    sget v12, Landroidx/appcompat/R$styleable;->SearchView_android_imeOptions:I

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v11

    move v8, v11

    .line 349
    .local v8, "imeOptions":I
    move v11, v8

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    .line 350
    move-object v11, v0

    move v12, v8

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/SearchView;->setImeOptions(I)V

    .line 353
    :cond_1
    move-object v11, v4

    sget v12, Landroidx/appcompat/R$styleable;->SearchView_android_inputType:I

    const/4 v13, -0x1

    invoke-virtual {v11, v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result v11

    move v9, v11

    .line 354
    .local v9, "inputType":I
    move v11, v9

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    .line 355
    move-object v11, v0

    move v12, v9

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/SearchView;->setInputType(I)V

    .line 358
    :cond_2
    const/4 v11, 0x1

    move v10, v11

    .line 359
    .local v10, "focusable":Z
    move-object v11, v4

    sget v12, Landroidx/appcompat/R$styleable;->SearchView_android_focusable:I

    move v13, v10

    invoke-virtual {v11, v12, v13}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v11

    move v10, v11

    .line 360
    move-object v11, v0

    move v12, v10

    invoke-virtual {v11, v12}, Landroidx/appcompat/widget/SearchView;->setFocusable(Z)V

    .line 362
    move-object v11, v4

    invoke-virtual {v11}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 365
    move-object v11, v0

    new-instance v12, Landroid/content/Intent;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const-string/jumbo v14, "android.speech.action.WEB_SEARCH"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v12, v11, Landroidx/appcompat/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 366
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const/high16 v12, 0x10000000

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v11

    .line 367
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const-string/jumbo v12, "android.speech.extra.LANGUAGE_MODEL"

    const-string/jumbo v13, "web_search"

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 370
    move-object v11, v0

    new-instance v12, Landroid/content/Intent;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const-string/jumbo v14, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v12, v11, Landroidx/appcompat/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 371
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    const/high16 v12, 0x10000000

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v11

    .line 373
    move-object v11, v0

    move-object v12, v0

    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v13}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result v13

    invoke-virtual {v12, v13}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iput-object v12, v11, Landroidx/appcompat/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    .line 374
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    if-eqz v11, :cond_3

    .line 375
    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    new-instance v12, Landroidx/appcompat/widget/SearchView$4;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v0

    invoke-direct {v13, v14}, Landroidx/appcompat/widget/SearchView$4;-><init>(Landroidx/appcompat/widget/SearchView;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 384
    :cond_3
    move-object v11, v0

    move-object v12, v0

    iget-boolean v12, v12, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    invoke-direct {v11, v12}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    .line 385
    move-object v11, v0

    invoke-direct {v11}, Landroidx/appcompat/widget/SearchView;->updateQueryHint()V

    .line 386
    return-void
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 12

    .prologue
    .line 1536
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, p1

    .local v1, "action":Ljava/lang/String;
    move-object v2, p2

    .local v2, "data":Landroid/net/Uri;
    move-object v3, p3

    .local v3, "extraData":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "query":Ljava/lang/String;
    move/from16 v5, p5

    .local v5, "actionKey":I
    move-object/from16 v6, p6

    .local v6, "actionMsg":Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v1

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    .line 1537
    .local v7, "intent":Landroid/content/Intent;
    move-object v8, v7

    const/high16 v9, 0x10000000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v8

    .line 1541
    move-object v8, v2

    if-eqz v8, :cond_0

    .line 1542
    move-object v8, v7

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v8

    .line 1544
    :cond_0
    move-object v8, v7

    const-string/jumbo v9, "user_query"

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v8

    .line 1545
    move-object v8, v4

    if-eqz v8, :cond_1

    .line 1546
    move-object v8, v7

    const-string/jumbo v9, "query"

    move-object v10, v4

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1548
    :cond_1
    move-object v8, v3

    if-eqz v8, :cond_2

    .line 1549
    move-object v8, v7

    const-string/jumbo v9, "intent_extra_data_key"

    move-object v10, v3

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1551
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v8, :cond_3

    .line 1552
    move-object v8, v7

    const-string/jumbo v9, "app_data"

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v8

    .line 1554
    :cond_3
    move v8, v5

    if-eqz v8, :cond_4

    .line 1555
    move-object v8, v7

    const-string/jumbo v9, "action_key"

    move v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    .line 1556
    move-object v8, v7

    const-string/jumbo v9, "action_msg"

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1558
    :cond_4
    move-object v8, v7

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v9}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v8

    .line 1559
    move-object v8, v7

    move-object v0, v8

    .end local v0    # "this":Landroidx/appcompat/widget/SearchView;
    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 17

    .prologue
    .line 1655
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object/from16 v1, p1

    .local v1, "c":Landroid/database/Cursor;
    move/from16 v2, p2

    .local v2, "actionKey":I
    move-object/from16 v3, p3

    .local v3, "actionMsg":Ljava/lang/String;
    move-object v9, v1

    :try_start_0
    const-string/jumbo v10, "suggest_intent_action"

    invoke-static {v9, v10}, Landroidx/appcompat/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 1657
    .local v4, "action":Ljava/lang/String;
    move-object v9, v4

    if-nez v9, :cond_0

    .line 1658
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v9}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 1660
    :cond_0
    move-object v9, v4

    if-nez v9, :cond_1

    .line 1661
    const-string/jumbo v9, "android.intent.action.SEARCH"

    move-object v4, v9

    .line 1665
    :cond_1
    move-object v9, v1

    const-string/jumbo v10, "suggest_intent_data"

    invoke-static {v9, v10}, Landroidx/appcompat/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 1666
    .local v5, "data":Ljava/lang/String;
    move-object v9, v5

    if-nez v9, :cond_2

    .line 1667
    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v9}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 1670
    :cond_2
    move-object v9, v5

    if-eqz v9, :cond_3

    .line 1671
    move-object v9, v1

    const-string/jumbo v10, "suggest_intent_data_id"

    invoke-static {v9, v10}, Landroidx/appcompat/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 1672
    .local v6, "id":Ljava/lang/String;
    move-object v9, v6

    if-eqz v9, :cond_3

    .line 1673
    new-instance v9, Ljava/lang/StringBuilder;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v6

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 1676
    .end local v6    # "id":Ljava/lang/String;
    :cond_3
    move-object v9, v5

    if-nez v9, :cond_4

    const/4 v9, 0x0

    :goto_0
    move-object v6, v9

    .line 1678
    .local v6, "dataUri":Landroid/net/Uri;
    move-object v9, v1

    const-string/jumbo v10, "suggest_intent_query"

    invoke-static {v9, v10}, Landroidx/appcompat/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 1679
    .local v7, "query":Ljava/lang/String;
    move-object v9, v1

    const-string/jumbo v10, "suggest_intent_extra_data"

    invoke-static {v9, v10}, Landroidx/appcompat/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 1681
    .local v8, "extraData":Ljava/lang/String;
    move-object v9, v0

    move-object v10, v4

    move-object v11, v6

    move-object v12, v8

    move-object v13, v7

    move v14, v2

    move-object v15, v3

    invoke-direct/range {v9 .. v15}, Landroidx/appcompat/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    move-object v0, v9

    .line 1691
    .end local v0    # "this":Landroidx/appcompat/widget/SearchView;
    .end local v4    # "action":Ljava/lang/String;
    .end local v5    # "data":Ljava/lang/String;
    .end local v6    # "dataUri":Landroid/net/Uri;
    .end local v7    # "query":Ljava/lang/String;
    .end local v8    # "extraData":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 1676
    .restart local v0    # "this":Landroidx/appcompat/widget/SearchView;
    .restart local v4    # "action":Ljava/lang/String;
    .restart local v5    # "data":Ljava/lang/String;
    :cond_4
    move-object v9, v5

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_0

    .line 1682
    .end local v4    # "action":Ljava/lang/String;
    .end local v5    # "data":Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 1685
    .local v4, "e":Ljava/lang/RuntimeException;
    move-object v9, v1

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getPosition()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    move v5, v9

    .line 1688
    .line 1689
    .local v5, "rowNum":I
    :goto_2
    const-string/jumbo v9, "SearchView"

    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Search suggestions cursor at row "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " returned exception."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v11, v4

    invoke-static {v9, v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v9

    .line 1691
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_1

    .line 1686
    .end local v5    # "rowNum":I
    :catch_1
    move-exception v9

    move-object v6, v9

    .line 1687
    .local v6, "e2":Ljava/lang/RuntimeException;
    const/4 v9, -0x1

    move v5, v9

    .restart local v5    # "rowNum":I
    goto :goto_2
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 18

    .prologue
    .line 1581
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object/from16 v1, p1

    .local v1, "baseIntent":Landroid/content/Intent;
    move-object/from16 v2, p2

    .local v2, "searchable":Landroid/app/SearchableInfo;
    move-object v13, v2

    invoke-virtual {v13}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v13

    move-object v3, v13

    .line 1586
    .local v3, "searchActivity":Landroid/content/ComponentName;
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const-string/jumbo v15, "android.intent.action.SEARCH"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v4, v13

    .line 1587
    .local v4, "queryIntent":Landroid/content/Intent;
    move-object v13, v4

    move-object v14, v3

    invoke-virtual {v13, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v13

    .line 1588
    move-object v13, v0

    invoke-virtual {v13}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    move-object v15, v4

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v13 .. v16}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    move-object v5, v13

    .line 1595
    .local v5, "pending":Landroid/app/PendingIntent;
    new-instance v13, Landroid/os/Bundle;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    move-object v6, v13

    .line 1596
    .local v6, "queryExtras":Landroid/os/Bundle;
    move-object v13, v0

    iget-object v13, v13, Landroidx/appcompat/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v13, :cond_0

    .line 1597
    move-object v13, v6

    const-string/jumbo v14, "app_data"

    move-object v15, v0

    iget-object v15, v15, Landroidx/appcompat/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v13, v14, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1603
    :cond_0
    new-instance v13, Landroid/content/Intent;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v1

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v7, v13

    .line 1606
    .local v7, "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v13, "free_form"

    move-object v8, v13

    .line 1607
    .local v8, "languageModel":Ljava/lang/String;
    const/4 v13, 0x0

    move-object v9, v13

    .line 1608
    .local v9, "prompt":Ljava/lang/String;
    const/4 v13, 0x0

    move-object v10, v13

    .line 1609
    .local v10, "language":Ljava/lang/String;
    const/4 v13, 0x1

    move v11, v13

    .line 1611
    .local v11, "maxResults":I
    move-object v13, v0

    invoke-virtual {v13}, Landroidx/appcompat/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object v12, v13

    .line 1612
    .local v12, "resources":Landroid/content/res/Resources;
    move-object v13, v2

    invoke-virtual {v13}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v13

    if-eqz v13, :cond_1

    .line 1613
    move-object v13, v12

    move-object v14, v2

    invoke-virtual {v14}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    .line 1615
    :cond_1
    move-object v13, v2

    invoke-virtual {v13}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v13

    if-eqz v13, :cond_2

    .line 1616
    move-object v13, v12

    move-object v14, v2

    invoke-virtual {v14}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    .line 1618
    :cond_2
    move-object v13, v2

    invoke-virtual {v13}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v13

    if-eqz v13, :cond_3

    .line 1619
    move-object v13, v12

    move-object v14, v2

    invoke-virtual {v14}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 1621
    :cond_3
    move-object v13, v2

    invoke-virtual {v13}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v13

    if-eqz v13, :cond_4

    .line 1622
    move-object v13, v2

    invoke-virtual {v13}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v13

    move v11, v13

    .line 1625
    :cond_4
    move-object v13, v7

    const-string/jumbo v14, "android.speech.extra.LANGUAGE_MODEL"

    move-object v15, v8

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .line 1626
    move-object v13, v7

    const-string/jumbo v14, "android.speech.extra.PROMPT"

    move-object v15, v9

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .line 1627
    move-object v13, v7

    const-string/jumbo v14, "android.speech.extra.LANGUAGE"

    move-object v15, v10

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .line 1628
    move-object v13, v7

    const-string/jumbo v14, "android.speech.extra.MAX_RESULTS"

    move v15, v11

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v13

    .line 1629
    move-object v13, v7

    const-string/jumbo v14, "calling_package"

    move-object v15, v3

    if-nez v15, :cond_5

    const/4 v15, 0x0

    :goto_0
    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    .line 1633
    move-object v13, v7

    const-string/jumbo v14, "android.speech.extra.RESULTS_PENDINGINTENT"

    move-object v15, v5

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v13

    .line 1634
    move-object v13, v7

    const-string/jumbo v14, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    move-object v15, v6

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v13

    .line 1636
    move-object v13, v7

    move-object v0, v13

    .end local v0    # "this":Landroidx/appcompat/widget/SearchView;
    return-object v0

    .line 1629
    .restart local v0    # "this":Landroidx/appcompat/widget/SearchView;
    :cond_5
    move-object v15, v3

    .line 1630
    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v15

    goto :goto_0
.end method

.method private createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 9

    .prologue
    .line 1566
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, p1

    .local v1, "baseIntent":Landroid/content/Intent;
    move-object v2, p2

    .local v2, "searchable":Landroid/app/SearchableInfo;
    new-instance v5, Landroid/content/Intent;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v3, v5

    .line 1567
    .local v3, "voiceIntent":Landroid/content/Intent;
    move-object v5, v2

    invoke-virtual {v5}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v5

    move-object v4, v5

    .line 1568
    .local v4, "searchActivity":Landroid/content/ComponentName;
    move-object v5, v3

    const-string/jumbo v6, "calling_package"

    move-object v7, v4

    if-nez v7, :cond_0

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 1570
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "this":Landroidx/appcompat/widget/SearchView;
    return-object v0

    .line 1568
    .restart local v0    # "this":Landroidx/appcompat/widget/SearchView;
    :cond_0
    move-object v7, v4

    .line 1569
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private dismissSuggestions()V
    .locals 2

    .prologue
    .line 1201
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    .line 1202
    return-void
.end method

.method private getChildBoundsWithinSearchView(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 11

    .prologue
    .line 850
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "rect":Landroid/graphics/Rect;
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/SearchView;->mTemp:[I

    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationInWindow([I)V

    .line 851
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/SearchView;->mTemp2:[I

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/SearchView;->getLocationInWindow([I)V

    .line 852
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SearchView;->mTemp:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/SearchView;->mTemp2:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-int/2addr v5, v6

    move v3, v5

    .line 853
    .local v3, "top":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SearchView;->mTemp:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/SearchView;->mTemp2:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-int/2addr v5, v6

    move v4, v5

    .line 854
    .local v4, "left":I
    move-object v5, v2

    move v6, v4

    move v7, v3

    move v8, v4

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    move v9, v3

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 855
    return-void
.end method

.method private getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 10

    .prologue
    .line 1087
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, p1

    .local v1, "hintText":Ljava/lang/CharSequence;
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 1088
    :cond_0
    move-object v4, v1

    move-object v0, v4

    .line 1097
    .end local v0    # "this":Landroidx/appcompat/widget/SearchView;
    :goto_0
    return-object v0

    .line 1091
    .restart local v0    # "this":Landroidx/appcompat/widget/SearchView;
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getTextSize()F

    move-result v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v4, v6

    double-to-int v4, v4

    move v2, v4

    .line 1092
    .local v2, "textSize":I
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v2

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1094
    new-instance v4, Landroid/text/SpannableStringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "   "

    invoke-direct {v5, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v4

    .line 1095
    .local v3, "ssb":Landroid/text/SpannableStringBuilder;
    move-object v4, v3

    new-instance v5, Landroid/text/style/ImageSpan;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v6, v7}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/16 v8, 0x21

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1096
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    .line 1097
    move-object v4, v3

    move-object v0, v4

    goto :goto_0
.end method

.method private getPreferredHeight()I
    .locals 3

    .prologue
    .line 863
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/appcompat/R$dimen;->abc_search_view_preferred_height:I

    .line 864
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SearchView;
    return v0
.end method

.method private getPreferredWidth()I
    .locals 3

    .prologue
    .line 858
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroidx/appcompat/R$dimen;->abc_search_view_preferred_width:I

    .line 859
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SearchView;
    return v0
.end method

.method private hasVoiceSearch()Z
    .locals 6

    .prologue
    .line 892
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 893
    const/4 v3, 0x0

    move-object v1, v3

    .line 894
    .local v1, "testIntent":Landroid/content/Intent;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 895
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    move-object v1, v3

    .line 899
    :cond_0
    :goto_0
    move-object v3, v1

    if-eqz v3, :cond_3

    .line 900
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object v4, v1

    const/high16 v5, 0x10000

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    move-object v2, v3

    .line 902
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    move-object v3, v2

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    .line 905
    .end local v0    # "this":Landroidx/appcompat/widget/SearchView;
    :goto_2
    return v0

    .line 896
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v0    # "this":Landroidx/appcompat/widget/SearchView;
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 897
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    move-object v1, v3

    goto :goto_0

    .line 902
    .restart local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 905
    .end local v1    # "testIntent":Landroid/content/Intent;
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_2
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 1701
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v1, v0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "context":Landroid/content/Context;
    return v0

    .restart local v0    # "context":Landroid/content/Context;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSubmitAreaEnabled()Z
    .locals 2

    .prologue
    .line 909
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/SearchView;->mSubmitButtonEnabled:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v1, :cond_1

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/SearchView;->isIconified()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SearchView;
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/SearchView;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 1493
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, p1

    .local v1, "intent":Landroid/content/Intent;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 1494
    .line 1503
    :goto_0
    return-void

    .line 1499
    :cond_0
    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1502
    .line 1503
    :goto_1
    goto :goto_0

    .line 1500
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1501
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "SearchView"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed launch activity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_1
.end method

.method private launchSuggestion(IILjava/lang/String;)Z
    .locals 10

    .prologue
    .line 1476
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "actionKey":I
    move-object v3, p3

    .local v3, "actionMsg":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    invoke-virtual {v6}, Landroidx/cursoradapter/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    move-object v4, v6

    .line 1477
    .local v4, "c":Landroid/database/Cursor;
    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v4

    move v7, v1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1479
    move-object v6, v0

    move-object v7, v4

    move v8, v2

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Landroidx/appcompat/widget/SearchView;->createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v5, v6

    .line 1482
    .local v5, "intent":Landroid/content/Intent;
    move-object v6, v0

    move-object v7, v5

    invoke-direct {v6, v7}, Landroidx/appcompat/widget/SearchView;->launchIntent(Landroid/content/Intent;)V

    .line 1484
    const/4 v6, 0x1

    move v0, v6

    .line 1486
    .end local v0    # "this":Landroidx/appcompat/widget/SearchView;
    .end local v5    # "intent":Landroid/content/Intent;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/SearchView;
    :cond_0
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method private postUpdateFocusedState()V
    .locals 3

    .prologue
    .line 944
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 945
    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .locals 7

    .prologue
    .line 1443
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move v1, p1

    .local v1, "position":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v5

    move-object v2, v5

    .line 1444
    .local v2, "oldQuery":Ljava/lang/CharSequence;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    invoke-virtual {v5}, Landroidx/cursoradapter/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v5

    move-object v3, v5

    .line 1445
    .local v3, "c":Landroid/database/Cursor;
    move-object v5, v3

    if-nez v5, :cond_0

    .line 1446
    .line 1463
    :goto_0
    return-void

    .line 1448
    :cond_0
    move-object v5, v3

    move v6, v1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1450
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroidx/cursoradapter/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v4, v5

    .line 1451
    .local v4, "newQuery":Ljava/lang/CharSequence;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 1454
    move-object v5, v0

    move-object v6, v4

    invoke-direct {v5, v6}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 1459
    .line 1463
    .end local v4    # "newQuery":Ljava/lang/CharSequence;
    :goto_1
    goto :goto_0

    .line 1457
    .restart local v4    # "newQuery":Ljava/lang/CharSequence;
    :cond_1
    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1461
    .end local v4    # "newQuery":Ljava/lang/CharSequence;
    :cond_2
    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 1509
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, p1

    .local v1, "query":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1511
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-object v3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1512
    return-void

    .line 1511
    :cond_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    goto :goto_0
.end method

.method private updateCloseButton()V
    .locals 6

    .prologue
    .line 932
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_0
    move v1, v4

    .line 935
    .local v1, "hasText":Z
    move v4, v1

    if-nez v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v4, :cond_3

    move-object v4, v0

    iget-boolean v4, v4, Landroidx/appcompat/widget/SearchView;->mExpandedInActionView:Z

    if-nez v4, :cond_3

    :cond_0
    const/4 v4, 0x1

    :goto_1
    move v2, v4

    .line 936
    .local v2, "showClose":Z
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    move v5, v2

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 937
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v3, v4

    .line 938
    .local v3, "closeButtonImg":Landroid/graphics/drawable/Drawable;
    move-object v4, v3

    if-eqz v4, :cond_1

    .line 939
    move-object v4, v3

    move v5, v1

    if-eqz v5, :cond_5

    sget-object v5, Landroidx/appcompat/widget/SearchView;->ENABLED_STATE_SET:[I

    :goto_3
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    .line 941
    :cond_1
    return-void

    .line 932
    .end local v1    # "hasText":Z
    .end local v2    # "showClose":Z
    .end local v3    # "closeButtonImg":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 935
    .restart local v1    # "hasText":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 936
    .restart local v2    # "showClose":Z
    :cond_4
    const/16 v5, 0x8

    goto :goto_2

    .line 939
    .restart local v3    # "closeButtonImg":Landroid/graphics/drawable/Drawable;
    :cond_5
    sget-object v5, Landroidx/appcompat/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method private updateQueryHint()V
    .locals 5

    .prologue
    .line 1101
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v2

    move-object v1, v2

    .line 1102
    .local v1, "hint":Ljava/lang/CharSequence;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-object v3, v0

    move-object v4, v1

    if-nez v4, :cond_0

    const-string/jumbo v4, ""

    :goto_0
    invoke-direct {v3, v4}, Landroidx/appcompat/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 1103
    return-void

    .line 1102
    :cond_0
    move-object v4, v1

    goto :goto_0
.end method

.method private updateSearchAutoComplete()V
    .locals 10

    .prologue
    .line 1109
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 1110
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1111
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v2

    move v1, v2

    .line 1114
    .local v1, "inputType":I
    move v2, v1

    const/16 v3, 0xf

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1117
    move v2, v1

    const v3, -0x10001

    and-int/2addr v2, v3

    move v1, v2

    .line 1118
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1119
    move v2, v1

    const/high16 v3, 0x10000

    or-int/2addr v2, v3

    move v1, v2

    .line 1126
    move v2, v1

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    move v1, v2

    .line 1129
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 1130
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    if-eqz v2, :cond_1

    .line 1131
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/cursoradapter/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1135
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1136
    move-object v2, v0

    new-instance v3, Landroidx/appcompat/widget/SuggestionsAdapter;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-direct {v4, v5, v6, v7, v8}, Landroidx/appcompat/widget/SuggestionsAdapter;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v3, v2, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    .line 1138
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1139
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    check-cast v2, Landroidx/appcompat/widget/SuggestionsAdapter;

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/widget/SearchView;->mQueryRefinement:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 1143
    :cond_2
    return-void

    .line 1139
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private updateSubmitArea()V
    .locals 4

    .prologue
    .line 922
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    const/16 v2, 0x8

    move v1, v2

    .line 923
    .local v1, "visibility":I
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    .line 924
    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    .line 925
    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 926
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    .line 928
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSubmitArea:Landroid/view/View;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 929
    return-void
.end method

.method private updateSubmitButton(Z)V
    .locals 5

    .prologue
    .line 913
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move v1, p1

    .local v1, "hasText":Z
    const/16 v3, 0x8

    move v2, v3

    .line 914
    .local v2, "visibility":I
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/widget/SearchView;->mSubmitButtonEnabled:Z

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-direct {v3}, Landroidx/appcompat/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/SearchView;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    if-nez v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/widget/SearchView;->mVoiceButtonEnabled:Z

    if-nez v3, :cond_1

    .line 916
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    .line 918
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 919
    return-void
.end method

.method private updateViewsVisibility(Z)V
    .locals 7

    .prologue
    .line 868
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move v1, p1

    .local v1, "collapsed":Z
    move-object v5, v0

    move v6, v1

    iput-boolean v6, v5, Landroidx/appcompat/widget/SearchView;->mIconified:Z

    .line 870
    move v5, v1

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    :goto_0
    move v2, v5

    .line 872
    .local v2, "visCollapsed":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    move v3, v5

    .line 874
    .local v3, "hasText":Z
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 875
    move-object v5, v0

    move v6, v3

    invoke-direct {v5, v6}, Landroidx/appcompat/widget/SearchView;->updateSubmitButton(Z)V

    .line 876
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    move v6, v1

    if-eqz v6, :cond_3

    const/16 v6, 0x8

    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 879
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v5, :cond_4

    .line 880
    :cond_0
    const/16 v5, 0x8

    move v4, v5

    .line 884
    .local v4, "iconVisibility":I
    :goto_3
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    move v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 886
    move-object v5, v0

    invoke-direct {v5}, Landroidx/appcompat/widget/SearchView;->updateCloseButton()V

    .line 887
    move-object v5, v0

    move v6, v3

    if-nez v6, :cond_5

    const/4 v6, 0x1

    :goto_4
    invoke-direct {v5, v6}, Landroidx/appcompat/widget/SearchView;->updateVoiceButton(Z)V

    .line 888
    move-object v5, v0

    invoke-direct {v5}, Landroidx/appcompat/widget/SearchView;->updateSubmitArea()V

    .line 889
    return-void

    .line 870
    .end local v2    # "visCollapsed":I
    .end local v3    # "hasText":Z
    .end local v4    # "iconVisibility":I
    :cond_1
    const/16 v5, 0x8

    goto :goto_0

    .line 872
    .restart local v2    # "visCollapsed":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 876
    .restart local v3    # "hasText":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 882
    :cond_4
    const/4 v5, 0x0

    move v4, v5

    .restart local v4    # "iconVisibility":I
    goto :goto_3

    .line 887
    :cond_5
    const/4 v6, 0x0

    goto :goto_4
.end method

.method private updateVoiceButton(Z)V
    .locals 5

    .prologue
    .line 1152
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move v1, p1

    .local v1, "empty":Z
    const/16 v3, 0x8

    move v2, v3

    .line 1153
    .local v2, "visibility":I
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/appcompat/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/SearchView;->isIconified()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    if-eqz v3, :cond_0

    .line 1154
    const/4 v3, 0x0

    move v2, v3

    .line 1155
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1157
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1158
    return-void
.end method


# virtual methods
.method adjustDropDownSizeAndPosition()V
    .locals 12

    .prologue
    .line 1363
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    .line 1364
    move-object v8, v0

    invoke-virtual {v8}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object v1, v8

    .line 1365
    .local v1, "res":Landroid/content/res/Resources;
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    move-result v8

    move v2, v8

    .line 1366
    .local v2, "anchorPadding":I
    new-instance v8, Landroid/graphics/Rect;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    move-object v3, v8

    .line 1367
    .local v3, "dropDownPadding":Landroid/graphics/Rect;
    move-object v8, v0

    invoke-static {v8}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    move v4, v8

    .line 1368
    .local v4, "isLayoutRtl":Z
    move-object v8, v0

    iget-boolean v8, v8, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v8, :cond_1

    move-object v8, v1

    sget v9, Landroidx/appcompat/R$dimen;->abc_dropdownitem_icon_width:I

    .line 1369
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    move-object v9, v1

    sget v10, Landroidx/appcompat/R$dimen;->abc_dropdownitem_text_padding_left:I

    .line 1370
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int/2addr v8, v9

    :goto_0
    move v5, v8

    .line 1372
    .local v5, "iconOffset":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v8}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v8

    .line 1374
    move v8, v4

    if-eqz v8, :cond_2

    .line 1375
    move-object v8, v3

    iget v8, v8, Landroid/graphics/Rect;->left:I

    neg-int v8, v8

    move v6, v8

    .line 1379
    .local v6, "offset":I
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move v9, v6

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    .line 1380
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    move-object v9, v3

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    move-object v9, v3

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    move v9, v5

    add-int/2addr v8, v9

    move v9, v2

    sub-int/2addr v8, v9

    move v7, v8

    .line 1382
    .local v7, "width":I
    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move v9, v7

    invoke-virtual {v8, v9}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    .line 1384
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "anchorPadding":I
    .end local v3    # "dropDownPadding":Landroid/graphics/Rect;
    .end local v4    # "isLayoutRtl":Z
    .end local v5    # "iconOffset":I
    .end local v6    # "offset":I
    .end local v7    # "width":I
    :cond_0
    return-void

    .line 1370
    .restart local v1    # "res":Landroid/content/res/Resources;
    .restart local v2    # "anchorPadding":I
    .restart local v3    # "dropDownPadding":Landroid/graphics/Rect;
    .restart local v4    # "isLayoutRtl":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 1377
    .restart local v5    # "iconOffset":I
    :cond_2
    move v8, v2

    move-object v9, v3

    iget v9, v9, Landroid/graphics/Rect;->left:I

    move v10, v5

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    move v6, v8

    .restart local v6    # "offset":I
    goto :goto_1
.end method

.method public clearFocus()V
    .locals 3

    .prologue
    .line 496
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/widget/SearchView;->mClearingFocus:Z

    .line 497
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->clearFocus()V

    .line 498
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->clearFocus()V

    .line 499
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 500
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/appcompat/widget/SearchView;->mClearingFocus:Z

    .line 501
    return-void
.end method

.method forceSuggestionQuery()V
    .locals 3

    .prologue
    .line 1696
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    sget-object v1, Landroidx/appcompat/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged(Landroid/widget/AutoCompleteTextView;)V

    .line 1697
    sget-object v1, Landroidx/appcompat/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged(Landroid/widget/AutoCompleteTextView;)V

    .line 1698
    return-void
.end method

.method public getImeOptions()I
    .locals 2

    .prologue
    .line 451
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SearchView;
    return v0
.end method

.method public getInputType()I
    .locals 2

    .prologue
    .line 473
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getInputType()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SearchView;
    return v0
.end method

.method public getMaxWidth()I
    .locals 2

    .prologue
    .line 776
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/SearchView;->mMaxWidth:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SearchView;
    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 558
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SearchView;
    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 618
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 619
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    move-object v1, v2

    .line 625
    .local v1, "hint":Ljava/lang/CharSequence;
    :goto_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/appcompat/widget/SearchView;
    return-object v0

    .line 620
    .end local v1    # "hint":Ljava/lang/CharSequence;
    .restart local v0    # "this":Landroidx/appcompat/widget/SearchView;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v2

    if-eqz v2, :cond_1

    .line 621
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v1, v2

    .restart local v1    # "hint":Ljava/lang/CharSequence;
    goto :goto_0

    .line 623
    .end local v1    # "hint":Ljava/lang/CharSequence;
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mDefaultQueryHint:Ljava/lang/CharSequence;

    move-object v1, v2

    .restart local v1    # "hint":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method getSuggestionCommitIconResId()I
    .locals 2

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/SearchView;->mSuggestionCommitIconResId:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SearchView;
    return v0
.end method

.method getSuggestionRowLayout()I
    .locals 2

    .prologue
    .line 389
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, v0

    iget v1, v1, Landroidx/appcompat/widget/SearchView;->mSuggestionRowLayout:I

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SearchView;
    return v0
.end method

.method public getSuggestionsAdapter()Landroidx/cursoradapter/widget/CursorAdapter;
    .locals 2

    .prologue
    .line 754
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    move-object v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SearchView;
    return-object v0
.end method

.method public isIconfiedByDefault()Z
    .locals 2

    .prologue
    .line 654
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SearchView;
    return v0
.end method

.method public isIconified()Z
    .locals 2

    .prologue
    .line 682
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/SearchView;->mIconified:Z

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SearchView;
    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .locals 2

    .prologue
    .line 734
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/SearchView;->mQueryRefinement:Z

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SearchView;
    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .locals 2

    .prologue
    .line 704
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/SearchView;->mSubmitButtonEnabled:Z

    move v0, v1

    .end local v0    # "this":Landroidx/appcompat/widget/SearchView;
    return v0
.end method

.method launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 1515
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move v1, p1

    .local v1, "actionKey":I
    move-object v2, p2

    .local v2, "actionMsg":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "query":Ljava/lang/String;
    const-string/jumbo v6, "android.intent.action.SEARCH"

    move-object v4, v6

    .line 1516
    .local v4, "action":Ljava/lang/String;
    move-object v6, v0

    move-object v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v10, v3

    move v11, v1

    move-object v12, v2

    invoke-direct/range {v6 .. v12}, Landroidx/appcompat/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v5, v6

    .line 1517
    .local v5, "intent":Landroid/content/Intent;
    move-object v6, v0

    invoke-virtual {v6}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v5

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1518
    return-void
.end method

.method public onActionViewCollapsed()V
    .locals 4

    .prologue
    .line 1278
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, v0

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1279
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 1280
    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1281
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/widget/SearchView;->mCollapsedImeOptions:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1282
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/appcompat/widget/SearchView;->mExpandedInActionView:Z

    .line 1283
    return-void
.end method

.method public onActionViewExpanded()V
    .locals 4

    .prologue
    .line 1290
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, v0

    iget-boolean v1, v1, Landroidx/appcompat/widget/SearchView;->mExpandedInActionView:Z

    if-eqz v1, :cond_0

    .line 1297
    :goto_0
    return-void

    .line 1292
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/appcompat/widget/SearchView;->mExpandedInActionView:Z

    .line 1293
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v2

    iput v2, v1, Landroidx/appcompat/widget/SearchView;->mCollapsedImeOptions:I

    .line 1294
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-object v2, v0

    iget v2, v2, Landroidx/appcompat/widget/SearchView;->mCollapsedImeOptions:I

    const/high16 v3, 0x2000000

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1295
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1296
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    .line 1297
    goto :goto_0
.end method

.method onCloseClicked()V
    .locals 4

    .prologue
    .line 1205
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    move-object v1, v2

    .line 1206
    .local v1, "text":Ljava/lang/CharSequence;
    move-object v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1207
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v2, :cond_1

    .line 1209
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mOnCloseListener:Landroidx/appcompat/widget/SearchView$OnCloseListener;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mOnCloseListener:Landroidx/appcompat/widget/SearchView$OnCloseListener;

    invoke-interface {v2}, Landroidx/appcompat/widget/SearchView$OnCloseListener;->onClose()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1211
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 1213
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1222
    :cond_1
    :goto_0
    return-void

    .line 1217
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1218
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    move-result v2

    .line 1219
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 963
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 964
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 965
    move-object v1, v0

    invoke-super {v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    .line 966
    return-void
.end method

.method onItemClicked(IILjava/lang/String;)Z
    .locals 8

    .prologue
    .line 1387
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move v1, p1

    .local v1, "position":I
    move v2, p2

    .local v2, "actionKey":I
    move-object v3, p3

    .local v3, "actionMsg":Ljava/lang/String;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView;->mOnSuggestionListener:Landroidx/appcompat/widget/SearchView$OnSuggestionListener;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView;->mOnSuggestionListener:Landroidx/appcompat/widget/SearchView$OnSuggestionListener;

    move v5, v1

    .line 1388
    invoke-interface {v4, v5}, Landroidx/appcompat/widget/SearchView$OnSuggestionListener;->onSuggestionClick(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1389
    :cond_0
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroidx/appcompat/widget/SearchView;->launchSuggestion(IILjava/lang/String;)Z

    move-result v4

    .line 1390
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 1391
    move-object v4, v0

    invoke-direct {v4}, Landroidx/appcompat/widget/SearchView;->dismissSuggestions()V

    .line 1392
    const/4 v4, 0x1

    move v0, v4

    .line 1394
    .end local v0    # "this":Landroidx/appcompat/widget/SearchView;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/SearchView;
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method onItemSelected(I)Z
    .locals 4

    .prologue
    .line 1398
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mOnSuggestionListener:Landroidx/appcompat/widget/SearchView$OnSuggestionListener;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mOnSuggestionListener:Landroidx/appcompat/widget/SearchView$OnSuggestionListener;

    move v3, v1

    .line 1399
    invoke-interface {v2, v3}, Landroidx/appcompat/widget/SearchView$OnSuggestionListener;->onSuggestionSelect(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1400
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/SearchView;->rewriteQueryFromSuggestion(I)V

    .line 1401
    const/4 v2, 0x1

    move v0, v2

    .line 1403
    .end local v0    # "this":Landroidx/appcompat/widget/SearchView;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/appcompat/widget/SearchView;
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    .prologue
    .line 831
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move v1, p1

    .local v1, "changed":Z
    move v2, p2

    .local v2, "left":I
    move/from16 v3, p3

    .local v3, "top":I
    move/from16 v4, p4

    .local v4, "right":I
    move/from16 v5, p5

    .local v5, "bottom":I
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-super/range {v6 .. v11}, Landroidx/appcompat/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    .line 833
    move v6, v1

    if-eqz v6, :cond_0

    .line 836
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v7, v8}, Landroidx/appcompat/widget/SearchView;->getChildBoundsWithinSearchView(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 837
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    move v10, v5

    move v11, v3

    sub-int/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 839
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/SearchView;->mTouchDelegate:Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;

    if-nez v6, :cond_1

    .line 840
    move-object v6, v0

    new-instance v7, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    iget-object v9, v9, Landroidx/appcompat/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    move-object v10, v0

    iget-object v10, v10, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    move-object v11, v0

    iget-object v11, v11, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-direct {v8, v9, v10, v11}, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object v7, v6, Landroidx/appcompat/widget/SearchView;->mTouchDelegate:Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;

    .line 842
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/SearchView;->mTouchDelegate:Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;

    invoke-virtual {v6, v7}, Landroidx/appcompat/widget/SearchView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 847
    :cond_0
    :goto_0
    return-void

    .line 844
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/SearchView;->mTouchDelegate:Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;

    move-object v7, v0

    iget-object v7, v7, Landroidx/appcompat/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    move-object v8, v0

    iget-object v8, v8, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/widget/SearchView$UpdatableTouchDelegate;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 11

    .prologue
    .line 782
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move v1, p1

    .local v1, "widthMeasureSpec":I
    move v2, p2

    .local v2, "heightMeasureSpec":I
    move-object v7, v0

    invoke-virtual {v7}, Landroidx/appcompat/widget/SearchView;->isIconified()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 783
    move-object v7, v0

    move v8, v1

    move v9, v2

    invoke-super {v7, v8, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 784
    .line 827
    :goto_0
    return-void

    .line 787
    :cond_0
    move v7, v1

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    move v3, v7

    .line 788
    .local v3, "widthMode":I
    move v7, v1

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    move v4, v7

    .line 790
    .local v4, "width":I
    move v7, v3

    sparse-switch v7, :sswitch_data_0

    .line 810
    :cond_1
    :goto_1
    const/high16 v7, 0x40000000    # 2.0f

    move v3, v7

    .line 812
    move v7, v2

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    move v5, v7

    .line 813
    .local v5, "heightMode":I
    move v7, v2

    invoke-static {v7}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    move v6, v7

    .line 815
    .local v6, "height":I
    move v7, v5

    sparse-switch v7, :sswitch_data_1

    .line 823
    :goto_2
    const/high16 v7, 0x40000000    # 2.0f

    move v5, v7

    .line 825
    move-object v7, v0

    move v8, v4

    move v9, v3

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    move v9, v6

    move v10, v5

    .line 826
    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 825
    invoke-super {v7, v8, v9}, Landroidx/appcompat/widget/LinearLayoutCompat;->onMeasure(II)V

    .line 827
    goto :goto_0

    .line 793
    .end local v5    # "heightMode":I
    .end local v6    # "height":I
    :sswitch_0
    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/SearchView;->mMaxWidth:I

    if-lez v7, :cond_2

    .line 794
    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/SearchView;->mMaxWidth:I

    move v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v4, v7

    goto :goto_1

    .line 796
    :cond_2
    move-object v7, v0

    invoke-direct {v7}, Landroidx/appcompat/widget/SearchView;->getPreferredWidth()I

    move-result v7

    move v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v4, v7

    .line 798
    goto :goto_1

    .line 801
    :sswitch_1
    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/SearchView;->mMaxWidth:I

    if-lez v7, :cond_1

    .line 802
    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/SearchView;->mMaxWidth:I

    move v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v4, v7

    goto :goto_1

    .line 807
    :sswitch_2
    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/SearchView;->mMaxWidth:I

    if-lez v7, :cond_3

    move-object v7, v0

    iget v7, v7, Landroidx/appcompat/widget/SearchView;->mMaxWidth:I

    :goto_3
    move v4, v7

    goto :goto_1

    :cond_3
    move-object v7, v0

    invoke-direct {v7}, Landroidx/appcompat/widget/SearchView;->getPreferredWidth()I

    move-result v7

    goto :goto_3

    .line 817
    .restart local v5    # "heightMode":I
    .restart local v6    # "height":I
    :sswitch_3
    move-object v7, v0

    invoke-direct {v7}, Landroidx/appcompat/widget/SearchView;->getPreferredHeight()I

    move-result v7

    move v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v6, v7

    .line 818
    goto :goto_2

    .line 820
    :sswitch_4
    move-object v7, v0

    invoke-direct {v7}, Landroidx/appcompat/widget/SearchView;->getPreferredHeight()I

    move-result v7

    move v6, v7

    goto :goto_2

    .line 790
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch

    .line 815
    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_3
        0x0 -> :sswitch_4
    .end sparse-switch
.end method

.method onQueryRefine(Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 972
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, p1

    .local v1, "queryText":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 973
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5

    .prologue
    .line 1352
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, p1

    .local v1, "state":Landroid/os/Parcelable;
    move-object v3, v1

    instance-of v3, v3, Landroidx/appcompat/widget/SearchView$SavedState;

    if-nez v3, :cond_0

    .line 1353
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1354
    .line 1360
    :goto_0
    return-void

    .line 1356
    :cond_0
    move-object v3, v1

    check-cast v3, Landroidx/appcompat/widget/SearchView$SavedState;

    move-object v2, v3

    .line 1357
    .local v2, "ss":Landroidx/appcompat/widget/SearchView$SavedState;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroidx/appcompat/widget/SearchView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {v3, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1358
    move-object v3, v0

    move-object v4, v2

    iget-boolean v4, v4, Landroidx/appcompat/widget/SearchView$SavedState;->isIconified:Z

    invoke-direct {v3, v4}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1359
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/SearchView;->requestLayout()V

    .line 1360
    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .prologue
    .line 1344
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v3, v0

    invoke-super {v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v3

    move-object v1, v3

    .line 1345
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v3, Landroidx/appcompat/widget/SearchView$SavedState;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/SearchView$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v2, v3

    .line 1346
    .local v2, "ss":Landroidx/appcompat/widget/SearchView$SavedState;
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/SearchView;->isIconified()Z

    move-result v4

    iput-boolean v4, v3, Landroidx/appcompat/widget/SearchView$SavedState;->isIconified:Z

    .line 1347
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Landroidx/appcompat/widget/SearchView;
    return-object v0
.end method

.method onSearchClicked()V
    .locals 3

    .prologue
    .line 1225
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1226
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    move-result v1

    .line 1227
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 1228
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 1229
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1231
    :cond_0
    return-void
.end method

.method onSubmitQuery()V
    .locals 6

    .prologue
    .line 1187
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    move-object v1, v2

    .line 1188
    .local v1, "query":Ljava/lang/CharSequence;
    move-object v2, v1

    if-eqz v2, :cond_2

    move-object v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v2

    if-lez v2, :cond_2

    .line 1189
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    move-object v3, v1

    .line 1190
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/appcompat/widget/SearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1191
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v2, :cond_1

    .line 1192
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroidx/appcompat/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1194
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 1195
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/SearchView;->dismissSuggestions()V

    .line 1198
    :cond_2
    return-void
.end method

.method onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9

    .prologue
    .line 1042
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move v2, p2

    .local v2, "keyCode":I
    move-object v3, p3

    .local v3, "event":Landroid/view/KeyEvent;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v5, :cond_0

    .line 1043
    const/4 v5, 0x0

    move v0, v5

    .line 1081
    .end local v0    # "this":Landroidx/appcompat/widget/SearchView;
    :goto_0
    return v0

    .line 1045
    .restart local v0    # "this":Landroidx/appcompat/widget/SearchView;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    if-nez v5, :cond_1

    .line 1046
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 1048
    :cond_1
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_7

    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1051
    move v5, v2

    const/16 v6, 0x42

    if-eq v5, v6, :cond_2

    move v5, v2

    const/16 v6, 0x54

    if-eq v5, v6, :cond_2

    move v5, v2

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_3

    .line 1053
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v5

    move v4, v5

    .line 1054
    .local v4, "position":I
    move-object v5, v0

    move v6, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroidx/appcompat/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v5

    move v0, v5

    goto :goto_0

    .line 1059
    .end local v4    # "position":I
    :cond_3
    move v5, v2

    const/16 v6, 0x15

    if-eq v5, v6, :cond_4

    move v5, v2

    const/16 v6, 0x16

    if-ne v5, v6, :cond_6

    .line 1064
    :cond_4
    move v5, v2

    const/16 v6, 0x15

    if-ne v5, v6, :cond_5

    const/4 v5, 0x0

    .line 1065
    :goto_1
    move v4, v5

    .line 1066
    .local v4, "selPoint":I
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move v6, v4

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1067
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    .line 1068
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    .line 1069
    sget-object v5, Landroidx/appcompat/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroidx/appcompat/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V

    .line 1071
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 1064
    .end local v4    # "selPoint":I
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 1065
    invoke-virtual {v5}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->length()I

    move-result v5

    goto :goto_1

    .line 1075
    :cond_6
    move v5, v2

    const/16 v6, 0x13

    if-ne v5, v6, :cond_7

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v6}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v6

    if-ne v5, v6, :cond_7

    .line 1078
    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    .line 1081
    :cond_7
    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0
.end method

.method onTextChanged(Ljava/lang/CharSequence;)V
    .locals 6

    .prologue
    .line 1173
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, p1

    .local v1, "newText":Ljava/lang/CharSequence;
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v4

    move-object v2, v4

    .line 1174
    .local v2, "text":Ljava/lang/CharSequence;
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/appcompat/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 1175
    move-object v4, v2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    move v3, v4

    .line 1176
    .local v3, "hasText":Z
    move-object v4, v0

    move v5, v3

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/SearchView;->updateSubmitButton(Z)V

    .line 1177
    move-object v4, v0

    move v5, v3

    if-nez v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-direct {v4, v5}, Landroidx/appcompat/widget/SearchView;->updateVoiceButton(Z)V

    .line 1178
    move-object v4, v0

    invoke-direct {v4}, Landroidx/appcompat/widget/SearchView;->updateCloseButton()V

    .line 1179
    move-object v4, v0

    invoke-direct {v4}, Landroidx/appcompat/widget/SearchView;->updateSubmitArea()V

    .line 1180
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    if-eqz v4, :cond_0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1181
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    move-object v5, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroidx/appcompat/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    move-result v4

    .line 1183
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroidx/appcompat/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    .line 1184
    return-void

    .line 1175
    .end local v3    # "hasText":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1177
    .restart local v3    # "hasText":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method onTextFocusChanged()V
    .locals 3

    .prologue
    .line 1257
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SearchView;->isIconified()Z

    move-result v2

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    .line 1260
    move-object v1, v0

    invoke-direct {v1}, Landroidx/appcompat/widget/SearchView;->postUpdateFocusedState()V

    .line 1261
    move-object v1, v0

    iget-object v1, v1, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1262
    move-object v1, v0

    invoke-virtual {v1}, Landroidx/appcompat/widget/SearchView;->forceSuggestionQuery()V

    .line 1264
    :cond_0
    return-void
.end method

.method onVoiceClicked()V
    .locals 6

    .prologue
    .line 1235
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v3, :cond_0

    .line 1236
    .line 1254
    :goto_0
    return-void

    .line 1238
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    move-object v1, v3

    .line 1240
    .local v1, "searchable":Landroid/app/SearchableInfo;
    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1241
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/widget/SearchView;->createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v3

    move-object v2, v3

    .line 1243
    .local v2, "webSearchIntent":Landroid/content/Intent;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1244
    .line 1253
    .line 1254
    .end local v2    # "webSearchIntent":Landroid/content/Intent;
    :cond_1
    :goto_1
    goto :goto_0

    .line 1244
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1245
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroidx/appcompat/widget/SearchView;->createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v3

    move-object v2, v3

    .line 1247
    .local v2, "appSearchIntent":Landroid/content/Intent;
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1249
    .end local v2    # "appSearchIntent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1252
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "SearchView"

    const-string/jumbo v4, "Could not find voice search activity"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .prologue
    .line 1268
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move v1, p1

    .local v1, "hasWindowFocus":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->onWindowFocusChanged(Z)V

    .line 1270
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/SearchView;->postUpdateFocusedState()V

    .line 1271
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 7

    .prologue
    .line 479
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move v1, p1

    .local v1, "direction":I
    move-object v2, p2

    .local v2, "previouslyFocusedRect":Landroid/graphics/Rect;
    move-object v4, v0

    iget-boolean v4, v4, Landroidx/appcompat/widget/SearchView;->mClearingFocus:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    move v0, v4

    .line 490
    .end local v0    # "this":Landroidx/appcompat/widget/SearchView;
    :goto_0
    return v0

    .line 481
    .restart local v0    # "this":Landroidx/appcompat/widget/SearchView;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/SearchView;->isFocusable()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 483
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Landroidx/appcompat/widget/SearchView;->isIconified()Z

    move-result v4

    if-nez v4, :cond_3

    .line 484
    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v4

    move v3, v4

    .line 485
    .local v3, "result":Z
    move v4, v3

    if-eqz v4, :cond_2

    .line 486
    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    .line 488
    :cond_2
    move v4, v3

    move v0, v4

    goto :goto_0

    .line 490
    .end local v3    # "result":Z
    :cond_3
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 428
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, p1

    .local v1, "appSearchData":Landroid/os/Bundle;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    .line 429
    return-void
.end method

.method public setIconified(Z)V
    .locals 3

    .prologue
    .line 668
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move v1, p1

    .local v1, "iconify":Z
    move v2, v1

    if-eqz v2, :cond_0

    .line 669
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SearchView;->onCloseClicked()V

    .line 673
    :goto_0
    return-void

    .line 671
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SearchView;->onSearchClicked()V

    goto :goto_0
.end method

.method public setIconifiedByDefault(Z)V
    .locals 4

    .prologue
    .line 641
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move v1, p1

    .local v1, "iconified":Z
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 645
    :goto_0
    return-void

    .line 642
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/widget/SearchView;->mIconifiedByDefault:Z

    .line 643
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    .line 644
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/SearchView;->updateQueryHint()V

    .line 645
    goto :goto_0
.end method

.method public setImeOptions(I)V
    .locals 4

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move v1, p1

    .local v1, "imeOptions":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 441
    return-void
.end method

.method public setInputType(I)V
    .locals 4

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move v1, p1

    .local v1, "inputType":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move v3, v1

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 464
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 4

    .prologue
    .line 763
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move v1, p1

    .local v1, "maxpixels":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroidx/appcompat/widget/SearchView;->mMaxWidth:I

    .line 765
    move-object v2, v0

    invoke-virtual {v2}, Landroidx/appcompat/widget/SearchView;->requestLayout()V

    .line 766
    return-void
.end method

.method public setOnCloseListener(Landroidx/appcompat/widget/SearchView$OnCloseListener;)V
    .locals 4

    .prologue
    .line 519
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, p1

    .local v1, "listener":Landroidx/appcompat/widget/SearchView$OnCloseListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/SearchView;->mOnCloseListener:Landroidx/appcompat/widget/SearchView$OnCloseListener;

    .line 520
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 4

    .prologue
    .line 528
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, p1

    .local v1, "listener":Landroid/view/View$OnFocusChangeListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 529
    return-void
.end method

.method public setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V
    .locals 4

    .prologue
    .line 510
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, p1

    .local v1, "listener":Landroidx/appcompat/widget/SearchView$OnQueryTextListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/SearchView;->mOnQueryChangeListener:Landroidx/appcompat/widget/SearchView$OnQueryTextListener;

    .line 511
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 4

    .prologue
    .line 549
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, p1

    .local v1, "listener":Landroid/view/View$OnClickListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    .line 550
    return-void
.end method

.method public setOnSuggestionListener(Landroidx/appcompat/widget/SearchView$OnSuggestionListener;)V
    .locals 4

    .prologue
    .line 537
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, p1

    .local v1, "listener":Landroidx/appcompat/widget/SearchView$OnSuggestionListener;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/SearchView;->mOnSuggestionListener:Landroidx/appcompat/widget/SearchView$OnSuggestionListener;

    .line 538
    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 5

    .prologue
    .line 570
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, p1

    .local v1, "query":Ljava/lang/CharSequence;
    move v2, p2

    .local v2, "submit":Z
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 571
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 572
    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-object v4, v0

    iget-object v4, v4, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 573
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/appcompat/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 577
    :cond_0
    move v3, v2

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 578
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/SearchView;->onSubmitQuery()V

    .line 580
    :cond_1
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 593
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, p1

    .local v1, "hint":Ljava/lang/CharSequence;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 594
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/SearchView;->updateQueryHint()V

    .line 595
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 4

    .prologue
    .line 722
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move v1, p1

    .local v1, "enable":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/widget/SearchView;->mQueryRefinement:Z

    .line 723
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    instance-of v2, v2, Landroidx/appcompat/widget/SuggestionsAdapter;

    if-eqz v2, :cond_0

    .line 724
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    check-cast v2, Landroidx/appcompat/widget/SuggestionsAdapter;

    move v3, v1

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    :goto_0
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 727
    :cond_0
    return-void

    .line 724
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 4

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, p1

    .local v1, "searchable":Landroid/app/SearchableInfo;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 406
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v2, :cond_0

    .line 407
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/SearchView;->updateSearchAutoComplete()V

    .line 408
    move-object v2, v0

    invoke-direct {v2}, Landroidx/appcompat/widget/SearchView;->updateQueryHint()V

    .line 411
    :cond_0
    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Landroidx/appcompat/widget/SearchView;->hasVoiceSearch()Z

    move-result v3

    iput-boolean v3, v2, Landroidx/appcompat/widget/SearchView;->mVoiceButtonEnabled:Z

    .line 413
    move-object v2, v0

    iget-boolean v2, v2, Landroidx/appcompat/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v2, :cond_1

    .line 416
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string/jumbo v3, "nm"

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 418
    :cond_1
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/SearchView;->isIconified()Z

    move-result v3

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    .line 419
    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 4

    .prologue
    .line 694
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroidx/appcompat/widget/SearchView;->mSubmitButtonEnabled:Z

    .line 695
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/appcompat/widget/SearchView;->isIconified()Z

    move-result v3

    invoke-direct {v2, v3}, Landroidx/appcompat/widget/SearchView;->updateViewsVisibility(Z)V

    .line 696
    return-void
.end method

.method public setSuggestionsAdapter(Landroidx/cursoradapter/widget/CursorAdapter;)V
    .locals 4

    .prologue
    .line 744
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v1, p1

    .local v1, "adapter":Landroidx/cursoradapter/widget/CursorAdapter;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    .line 746
    move-object v2, v0

    iget-object v2, v2, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-object v3, v0

    iget-object v3, v3, Landroidx/appcompat/widget/SearchView;->mSuggestionsAdapter:Landroidx/cursoradapter/widget/CursorAdapter;

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 747
    return-void
.end method

.method updateFocusedState()V
    .locals 7

    .prologue
    .line 948
    move-object v0, p0

    .local v0, "this":Landroidx/appcompat/widget/SearchView;
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v5

    move v1, v5

    .line 949
    .local v1, "focused":Z
    move v5, v1

    if-eqz v5, :cond_2

    sget-object v5, Landroidx/appcompat/widget/SearchView;->FOCUSED_STATE_SET:[I

    :goto_0
    move-object v2, v5

    .line 950
    .local v2, "stateSet":[I
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v3, v5

    .line 951
    .local v3, "searchPlateBg":Landroid/graphics/drawable/Drawable;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 952
    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    .line 954
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroidx/appcompat/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v4, v5

    .line 955
    .local v4, "submitAreaBg":Landroid/graphics/drawable/Drawable;
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 956
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v5

    .line 958
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Landroidx/appcompat/widget/SearchView;->invalidate()V

    .line 959
    return-void

    .line 949
    .end local v2    # "stateSet":[I
    .end local v3    # "searchPlateBg":Landroid/graphics/drawable/Drawable;
    .end local v4    # "submitAreaBg":Landroid/graphics/drawable/Drawable;
    :cond_2
    sget-object v5, Landroidx/appcompat/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_0
.end method
