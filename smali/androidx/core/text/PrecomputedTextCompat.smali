.class public Landroidx/core/text/PrecomputedTextCompat;
.super Ljava/lang/Object;
.source "PrecomputedTextCompat.java"

# interfaces
.implements Landroid/text/Spannable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask;,
        Landroidx/core/text/PrecomputedTextCompat$Params;
    }
.end annotation


# static fields
.field private static final LINE_FEED:C = '\n'

.field private static sExecutor:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mParagraphEnds:[I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mParams:Landroidx/core/text/PrecomputedTextCompat$Params;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mText:Landroid/text/Spannable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mWrapped:Landroid/text/PrecomputedText;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/text/PrecomputedTextCompat;->sLock:Ljava/lang/Object;

    .line 73
    const/4 v0, 0x0

    sput-object v0, Landroidx/core/text/PrecomputedTextCompat;->sExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>(Landroid/text/PrecomputedText;Landroidx/core/text/PrecomputedTextCompat$Params;)V
    .locals 5
    .param p1    # Landroid/text/PrecomputedText;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/text/PrecomputedTextCompat$Params;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1c
    .end annotation

    .prologue
    .line 485
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/PrecomputedTextCompat;
    move-object v1, p1

    .local v1, "precomputed":Landroid/text/PrecomputedText;
    move-object v2, p2

    .local v2, "params":Landroidx/core/text/PrecomputedTextCompat$Params;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 486
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    .line 487
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/core/text/PrecomputedTextCompat;->mParams:Landroidx/core/text/PrecomputedTextCompat$Params;

    .line 488
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroidx/core/text/PrecomputedTextCompat;->mParagraphEnds:[I

    .line 489
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/core/text/PrecomputedTextCompat;->mWrapped:Landroid/text/PrecomputedText;

    .line 490
    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroidx/core/text/PrecomputedTextCompat$Params;[I)V
    .locals 9
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/text/PrecomputedTextCompat$Params;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 477
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/PrecomputedTextCompat;
    move-object v1, p1

    .local v1, "text":Ljava/lang/CharSequence;
    move-object v2, p2

    .local v2, "params":Landroidx/core/text/PrecomputedTextCompat$Params;
    move-object v3, p3

    .local v3, "paraEnds":[I
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 478
    move-object v4, v0

    new-instance v5, Landroid/text/SpannableString;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v5, v4, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    .line 479
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroidx/core/text/PrecomputedTextCompat;->mParams:Landroidx/core/text/PrecomputedTextCompat$Params;

    .line 480
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroidx/core/text/PrecomputedTextCompat;->mParagraphEnds:[I

    .line 481
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroidx/core/text/PrecomputedTextCompat;->mWrapped:Landroid/text/PrecomputedText;

    .line 482
    return-void
.end method

.method public static create(Ljava/lang/CharSequence;Landroidx/core/text/PrecomputedTextCompat$Params;)Landroidx/core/text/PrecomputedTextCompat;
    .locals 18
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/text/PrecomputedTextCompat$Params;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 419
    move-object/from16 v0, p0

    .local v0, "text":Ljava/lang/CharSequence;
    move-object/from16 v1, p1

    .local v1, "params":Landroidx/core/text/PrecomputedTextCompat$Params;
    move-object v8, v0

    invoke-static {v8}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 420
    move-object v8, v1

    invoke-static {v8}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 423
    :try_start_0
    const-string/jumbo v8, "PrecomputedText"

    invoke-static {v8}, Landroidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 425
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1c

    if-lt v8, v9, :cond_0

    move-object v8, v1

    iget-object v8, v8, Landroidx/core/text/PrecomputedTextCompat$Params;->mWrapped:Landroid/text/PrecomputedText$Params;

    if-eqz v8, :cond_0

    .line 426
    new-instance v8, Landroidx/core/text/PrecomputedTextCompat;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v10, v0

    move-object v11, v1

    iget-object v11, v11, Landroidx/core/text/PrecomputedTextCompat$Params;->mWrapped:Landroid/text/PrecomputedText$Params;

    .line 427
    invoke-static {v10, v11}, Landroid/text/PrecomputedText;->create(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;)Landroid/text/PrecomputedText;

    move-result-object v10

    move-object v11, v1

    invoke-direct {v9, v10, v11}, Landroidx/core/text/PrecomputedTextCompat;-><init>(Landroid/text/PrecomputedText;Landroidx/core/text/PrecomputedTextCompat$Params;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v8

    .line 471
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    move-object v8, v2

    move-object v0, v8

    .end local v0    # "text":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 430
    .restart local v0    # "text":Ljava/lang/CharSequence;
    :cond_0
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v8

    .line 432
    .local v2, "ends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    move v3, v8

    .line 433
    .local v3, "paraEnd":I
    move-object v8, v0

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move v4, v8

    .line 434
    .local v4, "end":I
    const/4 v8, 0x0

    move v5, v8

    .local v5, "paraStart":I
    :goto_1
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_2

    .line 435
    move-object v8, v0

    const/16 v9, 0xa

    move v10, v5

    move v11, v4

    invoke-static {v8, v9, v10, v11}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v8

    move v3, v8

    .line 436
    move v8, v3

    if-gez v8, :cond_1

    .line 439
    move v8, v4

    move v3, v8

    .line 444
    :goto_2
    move-object v8, v2

    move v9, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 434
    move v8, v3

    move v5, v8

    goto :goto_1

    .line 441
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 446
    :cond_2
    move-object v8, v2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [I

    move-object v5, v8

    .line 447
    .local v5, "result":[I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i":I
    :goto_3
    move v8, v6

    move-object v9, v2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 448
    move-object v8, v5

    move v9, v6

    move-object v10, v2

    move v11, v6

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v8, v9

    .line 447
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 454
    :cond_3
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-lt v8, v9, :cond_5

    .line 455
    move-object v8, v0

    const/4 v9, 0x0

    move-object v10, v0

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    move-object v11, v1

    invoke-virtual {v11}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v11

    const v12, 0x7fffffff

    invoke-static {v8, v9, v10, v11, v12}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v8

    move-object v9, v1

    .line 457
    invoke-virtual {v9}, Landroidx/core/text/PrecomputedTextCompat$Params;->getBreakStrategy()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v8

    move-object v9, v1

    .line 458
    invoke-virtual {v9}, Landroidx/core/text/PrecomputedTextCompat$Params;->getHyphenationFrequency()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v8

    move-object v9, v1

    .line 459
    invoke-virtual {v9}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v8

    .line 460
    invoke-virtual {v8}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v8

    .line 469
    :cond_4
    :goto_4
    new-instance v8, Landroidx/core/text/PrecomputedTextCompat;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v10, v0

    move-object v11, v1

    move-object v12, v5

    invoke-direct {v9, v10, v11, v12}, Landroidx/core/text/PrecomputedTextCompat;-><init>(Ljava/lang/CharSequence;Landroidx/core/text/PrecomputedTextCompat$Params;[I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v8

    .line 471
    .end local v6    # "i":I
    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    move-object v8, v6

    move-object v0, v8

    goto/16 :goto_0

    .line 461
    .restart local v6    # "i":I
    :cond_5
    :try_start_2
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_4

    .line 462
    new-instance v8, Landroid/text/StaticLayout;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Landroidx/core/text/PrecomputedTextCompat$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v11

    const v12, 0x7fffffff

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v9 .. v16}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 471
    .end local v2    # "ends":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "paraEnd":I
    .end local v4    # "end":I
    .end local v5    # "result":[I
    .end local v6    # "i":I
    :catchall_0
    move-exception v8

    move-object v7, v8

    invoke-static {}, Landroidx/core/os/TraceCompat;->endSection()V

    move-object v8, v7

    throw v8
.end method

.method private findParaIndex(I)I
    .locals 10
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .prologue
    .line 550
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/PrecomputedTextCompat;
    move v1, p1

    .local v1, "pos":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/text/PrecomputedTextCompat;->mParagraphEnds:[I

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 551
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroidx/core/text/PrecomputedTextCompat;->mParagraphEnds:[I

    move v5, v2

    aget v4, v4, v5

    if-ge v3, v4, :cond_0

    .line 552
    move v3, v2

    move v0, v3

    .end local v0    # "this":Landroidx/core/text/PrecomputedTextCompat;
    return v0

    .line 550
    .restart local v0    # "this":Landroidx/core/text/PrecomputedTextCompat;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 555
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pos must be less than "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/core/text/PrecomputedTextCompat;->mParagraphEnds:[I

    move-object v7, v0

    iget-object v7, v7, Landroidx/core/text/PrecomputedTextCompat;->mParagraphEnds:[I

    array-length v7, v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", gave "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getTextFuture(Ljava/lang/CharSequence;Landroidx/core/text/PrecomputedTextCompat$Params;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Future;
    .locals 11
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/text/PrecomputedTextCompat$Params;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Landroidx/core/text/PrecomputedTextCompat$Params;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Landroidx/core/text/PrecomputedTextCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 649
    move-object v0, p0

    .local v0, "charSequence":Ljava/lang/CharSequence;
    move-object v1, p1

    .local v1, "params":Landroidx/core/text/PrecomputedTextCompat$Params;
    move-object v2, p2

    .local v2, "executor":Ljava/util/concurrent/Executor;
    new-instance v6, Landroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    move-object v9, v0

    invoke-direct {v7, v8, v9}, Landroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask;-><init>(Landroidx/core/text/PrecomputedTextCompat$Params;Ljava/lang/CharSequence;)V

    move-object v3, v6

    .line 650
    .local v3, "task":Landroidx/core/text/PrecomputedTextCompat$PrecomputedTextFutureTask;
    move-object v6, v2

    if-nez v6, :cond_1

    .line 651
    sget-object v6, Landroidx/core/text/PrecomputedTextCompat;->sLock:Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v4, v7

    monitor-enter v6

    .line 652
    :try_start_0
    sget-object v6, Landroidx/core/text/PrecomputedTextCompat;->sExecutor:Ljava/util/concurrent/Executor;

    if-nez v6, :cond_0

    .line 653
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    sput-object v6, Landroidx/core/text/PrecomputedTextCompat;->sExecutor:Ljava/util/concurrent/Executor;

    .line 655
    :cond_0
    sget-object v6, Landroidx/core/text/PrecomputedTextCompat;->sExecutor:Ljava/util/concurrent/Executor;

    move-object v2, v6

    .line 656
    move-object v6, v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    :cond_1
    move-object v6, v2

    move-object v7, v3

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 659
    move-object v6, v3

    move-object v0, v6

    .end local v0    # "charSequence":Ljava/lang/CharSequence;
    return-object v0

    .line 656
    .restart local v0    # "charSequence":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v5

    throw v6
.end method


# virtual methods
.method public charAt(I)C
    .locals 4

    .prologue
    .line 747
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/PrecomputedTextCompat;
    move v1, p1

    .local v1, "index":I
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    move v3, v1

    invoke-interface {v2, v3}, Landroid/text/Spannable;->charAt(I)C

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/text/PrecomputedTextCompat;
    return v0
.end method

.method public getParagraphCount()I
    .locals 3
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .prologue
    .line 517
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/PrecomputedTextCompat;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 518
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/text/PrecomputedTextCompat;->mWrapped:Landroid/text/PrecomputedText;

    invoke-virtual {v1}, Landroid/text/PrecomputedText;->getParagraphCount()I

    move-result v1

    move v0, v1

    .line 520
    .end local v0    # "this":Landroidx/core/text/PrecomputedTextCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/text/PrecomputedTextCompat;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/text/PrecomputedTextCompat;->mParagraphEnds:[I

    array-length v1, v1

    move v0, v1

    goto :goto_0
.end method

.method public getParagraphEnd(I)I
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .prologue
    .line 540
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/PrecomputedTextCompat;
    move v1, p1

    .local v1, "paraIndex":I
    move v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/core/text/PrecomputedTextCompat;->getParagraphCount()I

    move-result v4

    const-string/jumbo v5, "paraIndex"

    invoke-static {v2, v3, v4, v5}, Landroidx/core/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v2

    .line 541
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 542
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/text/PrecomputedTextCompat;->mWrapped:Landroid/text/PrecomputedText;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result v2

    move v0, v2

    .line 544
    .end local v0    # "this":Landroidx/core/text/PrecomputedTextCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/text/PrecomputedTextCompat;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/text/PrecomputedTextCompat;->mParagraphEnds:[I

    move v3, v1

    aget v2, v2, v3

    move v0, v2

    goto :goto_0
.end method

.method public getParagraphStart(I)I
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .prologue
    .line 528
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/PrecomputedTextCompat;
    move v1, p1

    .local v1, "paraIndex":I
    move v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/core/text/PrecomputedTextCompat;->getParagraphCount()I

    move-result v4

    const-string/jumbo v5, "paraIndex"

    invoke-static {v2, v3, v4, v5}, Landroidx/core/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v2

    .line 529
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 530
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/text/PrecomputedTextCompat;->mWrapped:Landroid/text/PrecomputedText;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/text/PrecomputedText;->getParagraphStart(I)I

    move-result v2

    move v0, v2

    .line 532
    .end local v0    # "this":Landroidx/core/text/PrecomputedTextCompat;
    :goto_0
    return v0

    .restart local v0    # "this":Landroidx/core/text/PrecomputedTextCompat;
    :cond_0
    move v2, v1

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/text/PrecomputedTextCompat;->mParagraphEnds:[I

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    goto :goto_1
.end method

.method public getParams()Landroidx/core/text/PrecomputedTextCompat$Params;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 510
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/PrecomputedTextCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/text/PrecomputedTextCompat;->mParams:Landroidx/core/text/PrecomputedTextCompat$Params;

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/text/PrecomputedTextCompat;
    return-object v0
.end method

.method public getPrecomputedText()Landroid/text/PrecomputedText;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1c
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 499
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/PrecomputedTextCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    instance-of v1, v1, Landroid/text/PrecomputedText;

    if-eqz v1, :cond_0

    .line 500
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    check-cast v1, Landroid/text/PrecomputedText;

    move-object v0, v1

    .line 502
    .end local v0    # "this":Landroidx/core/text/PrecomputedTextCompat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/text/PrecomputedTextCompat;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 722
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/PrecomputedTextCompat;
    move-object v1, p1

    .local v1, "tag":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/text/PrecomputedTextCompat;
    return v0
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 727
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/PrecomputedTextCompat;
    move-object v1, p1

    .local v1, "tag":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/text/PrecomputedTextCompat;
    return v0
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 717
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/PrecomputedTextCompat;
    move-object v1, p1

    .local v1, "tag":Ljava/lang/Object;
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Landroidx/core/text/PrecomputedTextCompat;
    return v0
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 707
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/PrecomputedTextCompat;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move-object v3, p3

    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v4, v5, :cond_0

    .line 708
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/text/PrecomputedTextCompat;->mWrapped:Landroid/text/PrecomputedText;

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/text/PrecomputedText;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .line 710
    .end local v0    # "this":Landroidx/core/text/PrecomputedTextCompat;
    :goto_0
    return-object v0

    .restart local v0    # "this":Landroidx/core/text/PrecomputedTextCompat;
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 742
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/PrecomputedTextCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-interface {v1}, Landroid/text/Spannable;->length()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Landroidx/core/text/PrecomputedTextCompat;
    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 8

    .prologue
    .line 732
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/PrecomputedTextCompat;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "limit":I
    move-object v3, p3

    .local v3, "type":Ljava/lang/Class;
    move-object v4, v0

    iget-object v4, v4, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-interface {v4, v5, v6, v7}, Landroid/text/Spannable;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Landroidx/core/text/PrecomputedTextCompat;
    return v0
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 689
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/PrecomputedTextCompat;
    move-object v1, p1

    .local v1, "what":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Landroid/text/style/MetricAffectingSpan;

    if-eqz v2, :cond_0

    .line 690
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "MetricAffectingSpan can not be removed from PrecomputedText."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 693
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_1

    .line 694
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/text/PrecomputedTextCompat;->mWrapped:Landroid/text/PrecomputedText;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/text/PrecomputedText;->removeSpan(Ljava/lang/Object;)V

    .line 698
    :goto_0
    return-void

    .line 696
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .locals 11

    .prologue
    .line 673
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/PrecomputedTextCompat;
    move-object v1, p1

    .local v1, "what":Ljava/lang/Object;
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "end":I
    move v4, p4

    .local v4, "flags":I
    move-object v5, v1

    instance-of v5, v5, Landroid/text/style/MetricAffectingSpan;

    if-eqz v5, :cond_0

    .line 674
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "MetricAffectingSpan can not be set to PrecomputedText."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 677
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_1

    .line 678
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/text/PrecomputedTextCompat;->mWrapped:Landroid/text/PrecomputedText;

    move-object v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/text/PrecomputedText;->setSpan(Ljava/lang/Object;III)V

    .line 682
    :goto_0
    return-void

    .line 680
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    move-object v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 752
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/PrecomputedTextCompat;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "end":I
    move-object v3, v0

    iget-object v3, v3, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    move v4, v1

    move v5, v2

    invoke-interface {v3, v4, v5}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Landroidx/core/text/PrecomputedTextCompat;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 757
    move-object v0, p0

    .local v0, "this":Landroidx/core/text/PrecomputedTextCompat;
    move-object v1, v0

    iget-object v1, v1, Landroidx/core/text/PrecomputedTextCompat;->mText:Landroid/text/Spannable;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Landroidx/core/text/PrecomputedTextCompat;
    return-object v0
.end method
