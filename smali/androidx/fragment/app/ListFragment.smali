.class public Landroidx/fragment/app/ListFragment;
.super Landroidx/fragment/app/Fragment;
.source "ListFragment.java"


# static fields
.field static final INTERNAL_EMPTY_ID:I = 0xff0001

.field static final INTERNAL_LIST_CONTAINER_ID:I = 0xff0003

.field static final INTERNAL_PROGRESS_CONTAINER_ID:I = 0xff0002


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field mEmptyText:Ljava/lang/CharSequence;

.field mEmptyView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field mList:Landroid/widget/ListView;

.field mListContainer:Landroid/view/View;

.field mListShown:Z

.field private final mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field mProgressContainer:Landroid/view/View;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field mStandardEmptyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/ListFragment;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 50
    move-object v1, v0

    new-instance v2, Landroid/os/Handler;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v2, v1, Landroidx/fragment/app/ListFragment;->mHandler:Landroid/os/Handler;

    .line 52
    move-object v1, v0

    new-instance v2, Landroidx/fragment/app/ListFragment$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/fragment/app/ListFragment$1;-><init>(Landroidx/fragment/app/ListFragment;)V

    iput-object v2, v1, Landroidx/fragment/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 59
    move-object v1, v0

    new-instance v2, Landroidx/fragment/app/ListFragment$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroidx/fragment/app/ListFragment$2;-><init>(Landroidx/fragment/app/ListFragment;)V

    iput-object v2, v1, Landroidx/fragment/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 77
    return-void
.end method

.method private ensureList()V
    .locals 7

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/ListFragment;
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    if-eqz v3, :cond_0

    .line 329
    .line 379
    :goto_0
    return-void

    .line 331
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroidx/fragment/app/ListFragment;->getView()Landroid/view/View;

    move-result-object v3

    move-object v1, v3

    .line 332
    .local v1, "root":Landroid/view/View;
    move-object v3, v1

    if-nez v3, :cond_1

    .line 333
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Content view not yet created"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 335
    :cond_1
    move-object v3, v1

    instance-of v3, v3, Landroid/widget/ListView;

    if-eqz v3, :cond_4

    .line 336
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, v3, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 365
    :cond_2
    :goto_1
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroidx/fragment/app/ListFragment;->mListShown:Z

    .line 366
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/ListFragment;->mOnClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 367
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_9

    .line 368
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    move-object v2, v3

    .line 369
    .local v2, "adapter":Landroid/widget/ListAdapter;
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/fragment/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 370
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroidx/fragment/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 371
    .line 378
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    :goto_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 379
    goto :goto_0

    .line 338
    :cond_4
    move-object v3, v0

    move-object v4, v1

    const v5, 0xff0001

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 339
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-nez v3, :cond_5

    .line 340
    move-object v3, v0

    move-object v4, v1

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Landroidx/fragment/app/ListFragment;->mEmptyView:Landroid/view/View;

    .line 344
    :goto_3
    move-object v3, v0

    move-object v4, v1

    const v5, 0xff0002

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    .line 345
    move-object v3, v0

    move-object v4, v1

    const v5, 0xff0003

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    .line 346
    move-object v3, v1

    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 347
    .local v2, "rawListView":Landroid/view/View;
    move-object v3, v2

    instance-of v3, v3, Landroid/widget/ListView;

    if-nez v3, :cond_7

    .line 348
    move-object v3, v2

    if-nez v3, :cond_6

    .line 349
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 342
    .end local v2    # "rawListView":Landroid/view/View;
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 353
    .restart local v2    # "rawListView":Landroid/view/View;
    :cond_6
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 357
    :cond_7
    move-object v3, v0

    move-object v4, v2

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, v3, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 358
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v3, :cond_8

    .line 359
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/ListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 360
    :cond_8
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    .line 361
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    move-object v4, v0

    iget-object v4, v4, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 374
    .end local v2    # "rawListView":Landroid/view/View;
    :cond_9
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 375
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroidx/fragment/app/ListFragment;->setListShown(ZZ)V

    goto/16 :goto_2
.end method

.method private setListShown(ZZ)V
    .locals 7

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/ListFragment;
    move v1, p1

    .local v1, "shown":Z
    move v2, p2

    .local v2, "animate":Z
    move-object v3, v0

    invoke-direct {v3}, Landroidx/fragment/app/ListFragment;->ensureList()V

    .line 286
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    if-nez v3, :cond_0

    .line 287
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Can\'t be used with a custom content view"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 289
    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/fragment/app/ListFragment;->mListShown:Z

    move v4, v1

    if-ne v3, v4, :cond_1

    .line 290
    .line 318
    :goto_0
    return-void

    .line 292
    :cond_1
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Landroidx/fragment/app/ListFragment;->mListShown:Z

    .line 293
    move v3, v1

    if-eqz v3, :cond_3

    .line 294
    move v3, v2

    if-eqz v3, :cond_2

    .line 295
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    move-object v4, v0

    .line 296
    invoke-virtual {v4}, Landroidx/fragment/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10a0001

    .line 295
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 297
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    move-object v4, v0

    .line 298
    invoke-virtual {v4}, Landroidx/fragment/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x10a0000

    .line 297
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 303
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 304
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 318
    :goto_2
    goto :goto_0

    .line 300
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 301
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    goto :goto_1

    .line 306
    :cond_3
    move v3, v2

    if-eqz v3, :cond_4

    .line 307
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    move-object v4, v0

    .line 308
    invoke-virtual {v4}, Landroidx/fragment/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x10a0000

    .line 307
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 309
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    move-object v4, v0

    .line 310
    invoke-virtual {v4}, Landroidx/fragment/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10a0001

    .line 309
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 315
    :goto_3
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 316
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 312
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 313
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    goto :goto_3
.end method


# virtual methods
.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 2

    .prologue
    .line 324
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/ListFragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/ListFragment;
    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/ListFragment;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/fragment/app/ListFragment;->ensureList()V

    .line 228
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    move-object v0, v1

    .end local v0    # "this":Landroidx/fragment/app/ListFragment;
    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 3

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/ListFragment;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/fragment/app/ListFragment;->ensureList()V

    .line 220
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Landroidx/fragment/app/ListFragment;
    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 2

    .prologue
    .line 211
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/ListFragment;
    move-object v1, v0

    invoke-direct {v1}, Landroidx/fragment/app/ListFragment;->ensureList()V

    .line 212
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/fragment/app/ListFragment;
    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 18

    .prologue
    .line 96
    move-object/from16 v0, p0

    .local v0, "this":Landroidx/fragment/app/ListFragment;
    move-object/from16 v1, p1

    .local v1, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v2, p2

    .local v2, "container":Landroid/view/ViewGroup;
    move-object/from16 v3, p3

    .local v3, "savedInstanceState":Landroid/os/Bundle;
    move-object v11, v0

    invoke-virtual {v11}, Landroidx/fragment/app/ListFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    move-object v4, v11

    .line 98
    .local v4, "context":Landroid/content/Context;
    new-instance v11, Landroid/widget/FrameLayout;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v4

    invoke-direct {v12, v13}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v5, v11

    .line 102
    .local v5, "root":Landroid/widget/FrameLayout;
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v4

    invoke-direct {v12, v13}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object v6, v11

    .line 103
    .local v6, "pframe":Landroid/widget/LinearLayout;
    move-object v11, v6

    const v12, 0xff0002

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setId(I)V

    .line 104
    move-object v11, v6

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 105
    move-object v11, v6

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    move-object v11, v6

    const/16 v12, 0x11

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 108
    new-instance v11, Landroid/widget/ProgressBar;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v4

    const/4 v14, 0x0

    const v15, 0x101007a

    invoke-direct {v12, v13, v14, v15}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v7, v11

    .line 110
    .local v7, "progress":Landroid/widget/ProgressBar;
    move-object v11, v6

    move-object v12, v7

    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, -0x2

    const/16 v16, -0x2

    invoke-direct/range {v14 .. v16}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    move-object v11, v5

    move-object v12, v6

    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-direct/range {v14 .. v16}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance v11, Landroid/widget/FrameLayout;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v4

    invoke-direct {v12, v13}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object v8, v11

    .line 119
    .local v8, "lframe":Landroid/widget/FrameLayout;
    move-object v11, v8

    const v12, 0xff0003

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setId(I)V

    .line 121
    new-instance v11, Landroid/widget/TextView;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v4

    invoke-direct {v12, v13}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v9, v11

    .line 122
    .local v9, "tv":Landroid/widget/TextView;
    move-object v11, v9

    const v12, 0xff0001

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setId(I)V

    .line 123
    move-object v11, v9

    const/16 v12, 0x11

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 124
    move-object v11, v8

    move-object v12, v9

    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-direct/range {v14 .. v16}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    new-instance v11, Landroid/widget/ListView;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v4

    invoke-direct {v12, v13}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    move-object v10, v11

    .line 128
    .local v10, "lv":Landroid/widget/ListView;
    move-object v11, v10

    const v12, 0x102000a

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setId(I)V

    .line 129
    move-object v11, v10

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 130
    move-object v11, v8

    move-object v12, v10

    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-direct/range {v14 .. v16}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    move-object v11, v5

    move-object v12, v8

    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-direct/range {v14 .. v16}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12, v13}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    move-object v11, v5

    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-direct {v13, v14, v15}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    move-object v11, v5

    move-object v0, v11

    .end local v0    # "this":Landroidx/fragment/app/ListFragment;
    return-object v0
.end method

.method public onDestroyView()V
    .locals 8

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/ListFragment;
    move-object v1, v0

    iget-object v1, v1, Landroidx/fragment/app/ListFragment;->mHandler:Landroid/os/Handler;

    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/ListFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 159
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    .line 160
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/fragment/app/ListFragment;->mListShown:Z

    .line 161
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    const/4 v4, 0x0

    move-object v6, v3

    move-object v7, v4

    move-object v3, v7

    move-object v4, v6

    move-object v5, v7

    iput-object v5, v4, Landroidx/fragment/app/ListFragment;->mListContainer:Landroid/view/View;

    move-object v6, v2

    move-object v7, v3

    move-object v2, v7

    move-object v3, v6

    move-object v4, v7

    iput-object v4, v3, Landroidx/fragment/app/ListFragment;->mProgressContainer:Landroid/view/View;

    iput-object v2, v1, Landroidx/fragment/app/ListFragment;->mEmptyView:Landroid/view/View;

    .line 162
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    .line 163
    move-object v1, v0

    invoke-super {v1}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 164
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 178
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/ListFragment;
    move-object v1, p1

    .local v1, "view":Landroid/view/View;
    move-object v2, p2

    .local v2, "savedInstanceState":Landroid/os/Bundle;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 150
    move-object v3, v0

    invoke-direct {v3}, Landroidx/fragment/app/ListFragment;->ensureList()V

    .line 151
    return-void
.end method

.method public setEmptyText(Ljava/lang/CharSequence;)V
    .locals 6

    .prologue
    .line 237
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/ListFragment;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v2, v0

    invoke-direct {v2}, Landroidx/fragment/app/ListFragment;->ensureList()V

    .line 238
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    if-nez v2, :cond_0

    .line 239
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Can\'t be used with a custom content view"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    .line 243
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mStandardEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 245
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/fragment/app/ListFragment;->mEmptyText:Ljava/lang/CharSequence;

    .line 246
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 6

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/ListFragment;
    move-object v1, p1

    .local v1, "adapter":Landroid/widget/ListAdapter;
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 185
    .local v2, "hadAdapter":Z
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/fragment/app/ListFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 186
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    if-eqz v3, :cond_0

    .line 187
    move-object v3, v0

    iget-object v3, v3, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    move-object v3, v0

    iget-boolean v3, v3, Landroidx/fragment/app/ListFragment;->mListShown:Z

    if-nez v3, :cond_0

    move v3, v2

    if-nez v3, :cond_0

    .line 191
    move-object v3, v0

    const/4 v4, 0x1

    move-object v5, v0

    invoke-virtual {v5}, Landroidx/fragment/app/ListFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-direct {v3, v4, v5}, Landroidx/fragment/app/ListFragment;->setListShown(ZZ)V

    .line 194
    :cond_0
    return-void

    .line 184
    .end local v2    # "hadAdapter":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 191
    .restart local v2    # "hadAdapter":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public setListShown(Z)V
    .locals 5

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/ListFragment;
    move v1, p1

    .local v1, "shown":Z
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroidx/fragment/app/ListFragment;->setListShown(ZZ)V

    .line 264
    return-void
.end method

.method public setListShownNoAnimation(Z)V
    .locals 5

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/ListFragment;
    move v1, p1

    .local v1, "shown":Z
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroidx/fragment/app/ListFragment;->setListShown(ZZ)V

    .line 272
    return-void
.end method

.method public setSelection(I)V
    .locals 4

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Landroidx/fragment/app/ListFragment;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    invoke-direct {v2}, Landroidx/fragment/app/ListFragment;->ensureList()V

    .line 204
    move-object v2, v0

    iget-object v2, v2, Landroidx/fragment/app/ListFragment;->mList:Landroid/widget/ListView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 205
    return-void
.end method
