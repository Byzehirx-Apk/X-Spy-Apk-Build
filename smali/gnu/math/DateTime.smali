.class public Lgnu/math/DateTime;
.super Lgnu/math/Quantity;
.source "DateTime.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DATE_MASK:I = 0xe

.field static final DAY_COMPONENT:I = 0x3

.field public static final DAY_MASK:I = 0x8

.field public static GMT:Ljava/util/TimeZone; = null

.field static final HOURS_COMPONENT:I = 0x4

.field public static final HOURS_MASK:I = 0x10

.field static final MINUTES_COMPONENT:I = 0x5

.field public static final MINUTES_MASK:I = 0x20

.field static final MONTH_COMPONENT:I = 0x2

.field public static final MONTH_MASK:I = 0x4

.field static final SECONDS_COMPONENT:I = 0x6

.field public static final SECONDS_MASK:I = 0x40

.field static final TIMEZONE_COMPONENT:I = 0x7

.field public static final TIMEZONE_MASK:I = 0x80

.field public static final TIME_MASK:I = 0x70

.field static final YEAR_COMPONENT:I = 0x1

.field public static final YEAR_MASK:I = 0x2

.field private static final minDate:Ljava/util/Date;


# instance fields
.field calendar:Ljava/util/GregorianCalendar;

.field mask:I

.field nanoSeconds:I

.field unit:Lgnu/math/Unit;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 90
    new-instance v0, Ljava/util/Date;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lgnu/math/DateTime;->minDate:Ljava/util/Date;

    .line 229
    const-string/jumbo v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lgnu/math/DateTime;->GMT:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move v1, p1

    .local v1, "mask":I
    move-object v2, v0

    invoke-direct {v2}, Lgnu/math/Quantity;-><init>()V

    .line 20
    move-object v2, v0

    sget-object v3, Lgnu/math/Unit;->date:Lgnu/math/NamedUnit;

    iput-object v3, v2, Lgnu/math/DateTime;->unit:Lgnu/math/Unit;

    .line 94
    move-object v2, v0

    new-instance v3, Ljava/util/GregorianCalendar;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v3, v2, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    .line 96
    move-object v2, v0

    iget-object v2, v2, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    sget-object v3, Lgnu/math/DateTime;->minDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 97
    move-object v2, v0

    iget-object v2, v2, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->clear()V

    .line 98
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lgnu/math/DateTime;->mask:I

    .line 99
    return-void
.end method

.method public constructor <init>(ILjava/util/GregorianCalendar;)V
    .locals 5

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move v1, p1

    .local v1, "mask":I
    move-object v2, p2

    .local v2, "calendar":Ljava/util/GregorianCalendar;
    move-object v3, v0

    invoke-direct {v3}, Lgnu/math/Quantity;-><init>()V

    .line 20
    move-object v3, v0

    sget-object v4, Lgnu/math/Unit;->date:Lgnu/math/NamedUnit;

    iput-object v4, v3, Lgnu/math/DateTime;->unit:Lgnu/math/Unit;

    .line 103
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    .line 104
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lgnu/math/DateTime;->mask:I

    .line 105
    return-void
.end method

.method public static add(Lgnu/math/DateTime;Lgnu/math/Duration;I)Lgnu/math/DateTime;
    .locals 21

    .prologue
    .line 513
    move-object/from16 v2, p0

    .local v2, "x":Lgnu/math/DateTime;
    move-object/from16 v3, p1

    .local v3, "y":Lgnu/math/Duration;
    move/from16 v4, p2

    .local v4, "k":I
    move-object v12, v3

    iget-object v12, v12, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    sget-object v13, Lgnu/math/Unit;->duration:Lgnu/math/BaseUnit;

    if-eq v12, v13, :cond_0

    move-object v12, v3

    iget-object v12, v12, Lgnu/math/Duration;->unit:Lgnu/math/Unit;

    sget-object v13, Lgnu/math/Unit;->month:Lgnu/math/NamedUnit;

    if-ne v12, v13, :cond_1

    move-object v12, v2

    iget v12, v12, Lgnu/math/DateTime;->mask:I

    const/16 v13, 0xe

    and-int/lit8 v12, v12, 0xe

    const/16 v13, 0xe

    if-eq v12, v13, :cond_1

    .line 515
    :cond_0
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    const-string/jumbo v14, "invalid date/time +/- duration combinatuion"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 516
    :cond_1
    new-instance v12, Lgnu/math/DateTime;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    move-object v14, v2

    iget v14, v14, Lgnu/math/DateTime;->mask:I

    move-object v15, v2

    iget-object v15, v15, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v15}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/GregorianCalendar;

    invoke-direct {v13, v14, v15}, Lgnu/math/DateTime;-><init>(ILjava/util/GregorianCalendar;)V

    move-object v5, v12

    .line 517
    .local v5, "r":Lgnu/math/DateTime;
    move-object v12, v3

    iget v12, v12, Lgnu/math/Duration;->months:I

    if-eqz v12, :cond_3

    .line 519
    const/16 v12, 0xc

    move-object v13, v5

    invoke-virtual {v13}, Lgnu/math/DateTime;->getYear()I

    move-result v13

    mul-int/2addr v12, v13

    move-object v13, v5

    iget-object v13, v13, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v13

    add-int/2addr v12, v13

    move v6, v12

    .line 520
    .local v6, "month":I
    move v12, v6

    move v13, v4

    move-object v14, v3

    iget v14, v14, Lgnu/math/Duration;->months:I

    mul-int/2addr v13, v14

    add-int/2addr v12, v13

    move v6, v12

    .line 521
    move-object v12, v5

    iget-object v12, v12, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v12

    move v7, v12

    .line 523
    .local v7, "day":I
    move v12, v6

    const/16 v13, 0xc

    if-lt v12, v13, :cond_7

    .line 525
    move v12, v6

    const/16 v13, 0xc

    div-int/lit8 v12, v12, 0xc

    move v8, v12

    .line 526
    .local v8, "year":I
    move v12, v6

    const/16 v13, 0xc

    rem-int/lit8 v12, v12, 0xc

    move v6, v12

    .line 527
    move-object v12, v5

    iget-object v12, v12, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Ljava/util/GregorianCalendar;->set(II)V

    .line 528
    move v12, v6

    move v13, v8

    invoke-static {v12, v13}, Lgnu/math/DateTime;->daysInMonth(II)I

    move-result v12

    move v9, v12

    .line 539
    .local v9, "daysInMonth":I
    :goto_0
    move v12, v7

    move v13, v9

    if-le v12, v13, :cond_2

    .line 540
    move v12, v9

    move v7, v12

    .line 541
    :cond_2
    move-object v12, v5

    iget-object v12, v12, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    move v13, v8

    move v14, v6

    move v15, v7

    invoke-virtual {v12, v13, v14, v15}, Ljava/util/GregorianCalendar;->set(III)V

    .line 543
    .end local v6    # "month":I
    .end local v7    # "day":I
    .end local v8    # "year":I
    .end local v9    # "daysInMonth":I
    :cond_3
    move-object v12, v2

    iget v12, v12, Lgnu/math/DateTime;->nanoSeconds:I

    int-to-long v12, v12

    move v14, v4

    int-to-long v14, v14

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-wide v0, v0, Lgnu/math/Duration;->seconds:J

    move-wide/from16 v16, v0

    const-wide/32 v18, 0x3b9aca00

    mul-long v16, v16, v18

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget v0, v0, Lgnu/math/Duration;->nanos:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    mul-long v14, v14, v16

    add-long/2addr v12, v14

    move-wide v6, v12

    .line 544
    .local v6, "nanos":J
    move-wide v12, v6

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_6

    .line 546
    move-object v12, v2

    iget v12, v12, Lgnu/math/DateTime;->mask:I

    const/16 v13, 0x70

    and-int/lit8 v12, v12, 0x70

    if-nez v12, :cond_5

    .line 548
    const-wide v12, 0x4e94914f0000L

    move-wide v8, v12

    .line 549
    .local v8, "nanosPerDay":J
    move-wide v12, v6

    move-wide v14, v8

    rem-long/2addr v12, v14

    move-wide v10, v12

    .line 550
    .local v10, "mod":J
    move-wide v12, v10

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-gez v12, :cond_4

    .line 551
    move-wide v12, v10

    move-wide v14, v8

    add-long/2addr v12, v14

    move-wide v10, v12

    .line 552
    :cond_4
    move-wide v12, v6

    move-wide v14, v10

    sub-long/2addr v12, v14

    move-wide v6, v12

    .line 554
    .end local v8    # "nanosPerDay":J
    .end local v10    # "mod":J
    :cond_5
    move-object v12, v5

    iget-object v12, v12, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v12}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v12

    move-wide v8, v12

    .line 555
    .local v8, "millis":J
    move-wide v12, v8

    move-wide v14, v6

    const-wide/32 v16, 0x3b9aca00

    div-long v14, v14, v16

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    add-long/2addr v12, v14

    move-wide v8, v12

    .line 556
    move-object v12, v5

    iget-object v12, v12, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    move-wide v13, v8

    invoke-virtual {v12, v13, v14}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 557
    move-object v12, v5

    move-wide v13, v6

    const-wide/32 v15, 0x3b9aca00

    rem-long/2addr v13, v15

    long-to-int v13, v13

    iput v13, v12, Lgnu/math/DateTime;->nanoSeconds:I

    .line 559
    .end local v8    # "millis":J
    :cond_6
    move-object v12, v5

    move-object v2, v12

    .end local v2    # "x":Lgnu/math/DateTime;
    return-object v2

    .line 532
    .restart local v2    # "x":Lgnu/math/DateTime;
    .local v6, "month":I
    .restart local v7    # "day":I
    :cond_7
    const/16 v12, 0xb

    move v13, v6

    rsub-int/lit8 v12, v13, 0xb

    move v6, v12

    .line 533
    move-object v12, v5

    iget-object v12, v12, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Ljava/util/GregorianCalendar;->set(II)V

    .line 534
    move v12, v6

    const/16 v13, 0xc

    div-int/lit8 v12, v12, 0xc

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v8, v12

    .line 535
    .local v8, "year":I
    const/16 v12, 0xb

    move v13, v6

    const/16 v14, 0xc

    rem-int/lit8 v13, v13, 0xc

    rsub-int/lit8 v12, v13, 0xb

    move v6, v12

    .line 536
    move v12, v6

    const/4 v13, 0x1

    invoke-static {v12, v13}, Lgnu/math/DateTime;->daysInMonth(II)I

    move-result v12

    move v9, v12

    .restart local v9    # "daysInMonth":I
    goto/16 :goto_0
.end method

.method public static addMinutes(Lgnu/math/DateTime;I)Lgnu/math/DateTime;
    .locals 5

    .prologue
    .line 564
    move-object v0, p0

    .local v0, "x":Lgnu/math/DateTime;
    move v1, p1

    .local v1, "y":I
    move-object v2, v0

    const/16 v3, 0x3c

    move v4, v1

    mul-int/2addr v3, v4

    invoke-static {v2, v3}, Lgnu/math/DateTime;->addSeconds(Lgnu/math/DateTime;I)Lgnu/math/DateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "x":Lgnu/math/DateTime;
    return-object v0
.end method

.method public static addSeconds(Lgnu/math/DateTime;I)Lgnu/math/DateTime;
    .locals 15

    .prologue
    .line 569
    move-object v1, p0

    .local v1, "x":Lgnu/math/DateTime;
    move/from16 v2, p1

    .local v2, "y":I
    new-instance v8, Lgnu/math/DateTime;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v1

    iget v10, v10, Lgnu/math/DateTime;->mask:I

    move-object v11, v1

    iget-object v11, v11, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v11}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/GregorianCalendar;

    invoke-direct {v9, v10, v11}, Lgnu/math/DateTime;-><init>(ILjava/util/GregorianCalendar;)V

    move-object v3, v8

    .line 570
    .local v3, "r":Lgnu/math/DateTime;
    move v8, v2

    int-to-long v8, v8

    const-wide/32 v10, 0x3b9aca00

    mul-long/2addr v8, v10

    move-wide v4, v8

    .line 571
    .local v4, "nanos":J
    move-wide v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    .line 573
    move-object v8, v1

    iget v8, v8, Lgnu/math/DateTime;->nanoSeconds:I

    int-to-long v8, v8

    move-wide v10, v4

    add-long/2addr v8, v10

    move-wide v4, v8

    .line 574
    move-object v8, v1

    iget-object v8, v8, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v8}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v8

    move-wide v6, v8

    .line 575
    .local v6, "millis":J
    move-wide v8, v6

    move-wide v10, v4

    const-wide/32 v12, 0xf4240

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    move-wide v6, v8

    .line 576
    move-object v8, v3

    iget-object v8, v8, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    move-wide v9, v6

    invoke-virtual {v8, v9, v10}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 577
    move-object v8, v3

    move-wide v9, v4

    const-wide/32 v11, 0xf4240

    rem-long/2addr v9, v11

    long-to-int v9, v9

    iput v9, v8, Lgnu/math/DateTime;->nanoSeconds:I

    .line 579
    .end local v6    # "millis":J
    :cond_0
    move-object v8, v3

    move-object v1, v8

    .end local v1    # "x":Lgnu/math/DateTime;
    return-object v1
.end method

.method private static append(ILjava/lang/StringBuffer;I)V
    .locals 8

    .prologue
    .line 600
    move v0, p0

    .local v0, "value":I
    move-object v1, p1

    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move v2, p2

    .local v2, "minWidth":I
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    move v3, v5

    .line 601
    .local v3, "start":I
    move-object v5, v1

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 602
    move v5, v3

    move v6, v2

    add-int/2addr v5, v6

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    sub-int/2addr v5, v6

    move v4, v5

    .line 603
    .local v4, "padding":I
    :goto_0
    add-int/lit8 v4, v4, -0x1

    move v5, v4

    if-ltz v5, :cond_0

    .line 604
    move-object v5, v1

    move v6, v3

    const/16 v7, 0x30

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    move-result-object v5

    goto :goto_0

    .line 605
    :cond_0
    return-void
.end method

.method public static compare(Lgnu/math/DateTime;Lgnu/math/DateTime;)I
    .locals 12

    .prologue
    .line 429
    move-object v0, p0

    .local v0, "date1":Lgnu/math/DateTime;
    move-object v1, p1

    .local v1, "date2":Lgnu/math/DateTime;
    move-object v8, v0

    iget-object v8, v8, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v8}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v8

    move-wide v2, v8

    .line 430
    .local v2, "millis1":J
    move-object v8, v1

    iget-object v8, v8, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v8}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v8

    move-wide v4, v8

    .line 431
    .local v4, "millis2":J
    move-object v8, v0

    iget v8, v8, Lgnu/math/DateTime;->mask:I

    move-object v9, v1

    iget v9, v9, Lgnu/math/DateTime;->mask:I

    or-int/2addr v8, v9

    const/16 v9, 0xe

    and-int/lit8 v8, v8, 0xe

    if-nez v8, :cond_1

    .line 433
    move-wide v8, v2

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    move-wide v8, v2

    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    move-wide v2, v8

    .line 434
    :cond_0
    move-wide v8, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    move-wide v8, v4

    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    move-wide v4, v8

    .line 436
    :cond_1
    move-object v8, v0

    iget v8, v8, Lgnu/math/DateTime;->nanoSeconds:I

    move v6, v8

    .line 437
    .local v6, "nanos1":I
    move-object v8, v1

    iget v8, v8, Lgnu/math/DateTime;->nanoSeconds:I

    move v7, v8

    .line 438
    .local v7, "nanos2":I
    move-wide v8, v2

    move v10, v6

    const v11, 0xf4240

    div-int/2addr v10, v11

    int-to-long v10, v10

    add-long/2addr v8, v10

    move-wide v2, v8

    .line 439
    move-wide v8, v4

    move v10, v7

    const v11, 0xf4240

    div-int/2addr v10, v11

    int-to-long v10, v10

    add-long/2addr v8, v10

    move-wide v4, v8

    .line 440
    move v8, v6

    const v9, 0xf4240

    rem-int/2addr v8, v9

    move v6, v8

    .line 441
    move v8, v7

    const v9, 0xf4240

    rem-int/2addr v8, v9

    move v7, v8

    .line 442
    move-wide v8, v2

    move-wide v10, v4

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    const/4 v8, -0x1

    :goto_0
    move v0, v8

    .end local v0    # "date1":Lgnu/math/DateTime;
    return v0

    .restart local v0    # "date1":Lgnu/math/DateTime;
    :cond_2
    move-wide v8, v2

    move-wide v10, v4

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    move v8, v6

    move v9, v7

    if-ge v8, v9, :cond_4

    const/4 v8, -0x1

    goto :goto_0

    :cond_4
    move v8, v6

    move v9, v7

    if-le v8, v9, :cond_5

    const/4 v8, 0x1

    goto :goto_0

    :cond_5
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static daysInMonth(II)I
    .locals 3

    .prologue
    .line 215
    move v0, p0

    .local v0, "month":I
    move v1, p1

    .local v1, "year":I
    move v2, v0

    packed-switch v2, :pswitch_data_0

    .line 225
    :pswitch_0
    const/16 v2, 0x1f

    move v0, v2

    .end local v0    # "month":I
    :goto_0
    return v0

    .line 221
    .restart local v0    # "month":I
    :pswitch_1
    const/16 v2, 0x1e

    move v0, v2

    goto :goto_0

    .line 223
    :pswitch_2
    move v2, v1

    invoke-static {v2}, Lgnu/math/DateTime;->isLeapYear(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1d

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_0
    const/16 v2, 0x1c

    goto :goto_1

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isLeapYear(I)Z
    .locals 3

    .prologue
    .line 210
    move v0, p0

    .local v0, "year":I
    move v1, v0

    const/4 v2, 0x4

    rem-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_1

    move v1, v0

    const/16 v2, 0x64

    rem-int/lit8 v1, v1, 0x64

    if-nez v1, :cond_0

    move v1, v0

    const/16 v2, 0x190

    rem-int/lit16 v1, v1, 0x190

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "year":I
    return v0

    .restart local v0    # "year":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static minutesToTimeZone(I)Ljava/util/TimeZone;
    .locals 6

    .prologue
    .line 663
    move v0, p0

    .local v0, "minutes":I
    move v2, v0

    if-nez v2, :cond_0

    .line 664
    sget-object v2, Lgnu/math/DateTime;->GMT:Ljava/util/TimeZone;

    move-object v0, v2

    .line 667
    .end local v0    # "minutes":I
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    :goto_0
    return-object v0

    .line 665
    .end local v1    # "sbuf":Ljava/lang/StringBuffer;
    .restart local v0    # "minutes":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "GMT"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 666
    .restart local v1    # "sbuf":Ljava/lang/StringBuffer;
    move v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lgnu/math/DateTime;->toStringZone(ILjava/lang/StringBuffer;)V

    .line 667
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;I)Lgnu/math/DateTime;
    .locals 12

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "value":Ljava/lang/String;
    move v1, p1

    .local v1, "mask":I
    new-instance v7, Lgnu/math/DateTime;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move v9, v1

    invoke-direct {v8, v9}, Lgnu/math/DateTime;-><init>(I)V

    move-object v2, v7

    .line 110
    .local v2, "result":Lgnu/math/DateTime;
    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 111
    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v3, v7

    .line 112
    .local v3, "len":I
    const/4 v7, 0x0

    move v4, v7

    .line 113
    .local v4, "pos":I
    move v7, v1

    const/16 v8, 0xe

    and-int/lit8 v7, v7, 0xe

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    :goto_0
    move v5, v7

    .line 114
    .local v5, "wantDate":Z
    move v7, v1

    const/16 v8, 0x70

    and-int/lit8 v7, v7, 0x70

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    :goto_1
    move v6, v7

    .line 115
    .local v6, "wantTime":Z
    move v7, v5

    if-eqz v7, :cond_1

    .line 117
    move-object v7, v2

    move-object v8, v0

    move v9, v4

    move v10, v1

    invoke-virtual {v7, v8, v9, v10}, Lgnu/math/DateTime;->parseDate(Ljava/lang/String;II)I

    move-result v7

    move v4, v7

    .line 118
    move v7, v6

    if-eqz v7, :cond_1

    .line 120
    move v7, v4

    if-ltz v7, :cond_0

    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_0

    move-object v7, v0

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x54

    if-eq v7, v8, :cond_5

    .line 121
    :cond_0
    const/4 v7, -0x1

    move v4, v7

    .line 126
    :cond_1
    :goto_2
    move v7, v6

    if-eqz v7, :cond_2

    .line 127
    move-object v7, v2

    move-object v8, v0

    move v9, v4

    invoke-virtual {v7, v8, v9}, Lgnu/math/DateTime;->parseTime(Ljava/lang/String;I)I

    move-result v7

    move v4, v7

    .line 128
    :cond_2
    move-object v7, v2

    move-object v8, v0

    move v9, v4

    invoke-virtual {v7, v8, v9}, Lgnu/math/DateTime;->parseZone(Ljava/lang/String;I)I

    move-result v7

    move v4, v7

    .line 129
    move v7, v4

    move v8, v3

    if-eq v7, v8, :cond_6

    .line 130
    new-instance v7, Ljava/lang/NumberFormatException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unrecognized date/time \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x27

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 113
    .end local v5    # "wantDate":Z
    .end local v6    # "wantTime":Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .line 114
    .restart local v5    # "wantDate":Z
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 123
    .restart local v6    # "wantTime":Z
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 131
    :cond_6
    move-object v7, v2

    move-object v0, v7

    .end local v0    # "value":Ljava/lang/String;
    return-object v0
.end method

.method private static parseDigits(Ljava/lang/String;I)I
    .locals 9

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "str":Ljava/lang/String;
    move v1, p1

    .local v1, "start":I
    move v7, v1

    move v2, v7

    .line 360
    .local v2, "i":I
    const/4 v7, -0x1

    move v3, v7

    .line 361
    .local v3, "val":I
    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v4, v7

    .line 362
    .local v4, "len":I
    :goto_0
    move v7, v2

    move v8, v4

    if-ge v7, v8, :cond_0

    .line 364
    move-object v7, v0

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v5, v7

    .line 365
    .local v5, "ch":C
    move v7, v5

    const/16 v8, 0xa

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    move v6, v7

    .line 366
    .local v6, "dig":I
    move v7, v6

    if-gez v7, :cond_1

    .line 367
    .line 373
    .end local v5    # "ch":C
    .end local v6    # "dig":I
    :cond_0
    move v7, v3

    if-gez v7, :cond_4

    move v7, v2

    :goto_1
    move v0, v7

    .end local v0    # "str":Ljava/lang/String;
    :goto_2
    return v0

    .line 368
    .restart local v0    # "str":Ljava/lang/String;
    .restart local v5    # "ch":C
    .restart local v6    # "dig":I
    :cond_1
    move v7, v3

    const/16 v8, 0x4e20

    if-le v7, v8, :cond_2

    .line 369
    const/4 v7, 0x0

    move v0, v7

    goto :goto_2

    .line 370
    :cond_2
    move v7, v3

    if-gez v7, :cond_3

    move v7, v6

    :goto_3
    move v3, v7

    .line 371
    add-int/lit8 v2, v2, 0x1

    .line 372
    goto :goto_0

    .line 370
    :cond_3
    const/16 v7, 0xa

    move v8, v3

    mul-int/2addr v7, v8

    move v8, v6

    add-int/2addr v7, v8

    goto :goto_3

    .line 373
    .end local v5    # "ch":C
    .end local v6    # "dig":I
    :cond_4
    move v7, v3

    const/16 v8, 0x10

    shl-int/lit8 v7, v7, 0x10

    move v8, v2

    or-int/2addr v7, v8

    goto :goto_1
.end method

.method public static sub(Lgnu/math/DateTime;Lgnu/math/DateTime;)Lgnu/math/Duration;
    .locals 21

    .prologue
    .line 455
    move-object/from16 v3, p0

    .local v3, "date1":Lgnu/math/DateTime;
    move-object/from16 v4, p1

    .local v4, "date2":Lgnu/math/DateTime;
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v16

    move-wide/from16 v5, v16

    .line 456
    .local v5, "millis1":J
    move-object/from16 v16, v4

    move-object/from16 v0, v16

    iget-object v0, v0, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v16

    move-wide/from16 v7, v16

    .line 457
    .local v7, "millis2":J
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget v0, v0, Lgnu/math/DateTime;->nanoSeconds:I

    move/from16 v16, v0

    move/from16 v9, v16

    .line 458
    .local v9, "nanos1":I
    move-object/from16 v16, v4

    move-object/from16 v0, v16

    iget v0, v0, Lgnu/math/DateTime;->nanoSeconds:I

    move/from16 v16, v0

    move/from16 v10, v16

    .line 459
    .local v10, "nanos2":I
    move-wide/from16 v16, v5

    move/from16 v18, v9

    const v19, 0xf4240

    div-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v5, v16

    .line 460
    move-wide/from16 v16, v7

    move/from16 v18, v10

    const v19, 0xf4240

    div-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v7, v16

    .line 461
    move/from16 v16, v9

    const v17, 0xf4240

    rem-int v16, v16, v17

    move/from16 v9, v16

    .line 462
    move/from16 v16, v10

    const v17, 0xf4240

    rem-int v16, v16, v17

    move/from16 v10, v16

    .line 463
    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    sub-long v16, v16, v18

    move-wide/from16 v11, v16

    .line 464
    .local v11, "millis":J
    move-wide/from16 v16, v11

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    move-wide/from16 v13, v16

    .line 465
    .local v13, "seconds":J
    move-wide/from16 v16, v11

    const-wide/16 v18, 0x3e8

    rem-long v16, v16, v18

    const-wide/32 v18, 0xf4240

    mul-long v16, v16, v18

    move/from16 v18, v10

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move/from16 v18, v10

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v15, v16

    .line 466
    .local v15, "nanos":I
    move-wide/from16 v16, v13

    move/from16 v18, v15

    const v19, 0x3b9aca00

    div-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v13, v16

    .line 467
    move/from16 v16, v15

    const v17, 0x3b9aca00

    rem-int v16, v16, v17

    move/from16 v15, v16

    .line 468
    const/16 v16, 0x0

    move-wide/from16 v17, v13

    move/from16 v19, v15

    sget-object v20, Lgnu/math/Unit;->second:Lgnu/math/NamedUnit;

    invoke-static/range {v16 .. v20}, Lgnu/math/Duration;->make(IJILgnu/math/Unit;)Lgnu/math/Duration;

    move-result-object v16

    move-object/from16 v3, v16

    .end local v3    # "date1":Lgnu/math/DateTime;
    return-object v3
.end method

.method public static toStringZone(ILjava/lang/StringBuffer;)V
    .locals 5

    .prologue
    .line 683
    move v0, p0

    .local v0, "minutes":I
    move-object v1, p1

    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move v2, v0

    if-nez v2, :cond_0

    .line 684
    move-object v2, v1

    const/16 v3, 0x5a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 698
    :goto_0
    return-void

    .line 687
    :cond_0
    move v2, v0

    if-gez v2, :cond_1

    .line 689
    move-object v2, v1

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 690
    move v2, v0

    neg-int v2, v2

    move v0, v2

    .line 694
    :goto_1
    move v2, v0

    const/16 v3, 0x3c

    div-int/lit8 v2, v2, 0x3c

    move-object v3, v1

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    .line 695
    move-object v2, v1

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 696
    move v2, v0

    const/16 v3, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    move-object v3, v1

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    goto :goto_0

    .line 693
    :cond_1
    move-object v2, v1

    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public add(Ljava/lang/Object;I)Lgnu/math/Numeric;
    .locals 7

    .prologue
    .line 584
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move-object v1, p1

    .local v1, "y":Ljava/lang/Object;
    move v2, p2

    .local v2, "k":I
    move-object v3, v1

    instance-of v3, v3, Lgnu/math/Duration;

    if-eqz v3, :cond_0

    .line 585
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lgnu/math/Duration;

    move v5, v2

    invoke-static {v3, v4, v5}, Lgnu/math/DateTime;->add(Lgnu/math/DateTime;Lgnu/math/Duration;I)Lgnu/math/DateTime;

    move-result-object v3

    move-object v0, v3

    .line 587
    .end local v0    # "this":Lgnu/math/DateTime;
    :goto_0
    return-object v0

    .line 586
    .restart local v0    # "this":Lgnu/math/DateTime;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lgnu/math/DateTime;

    if-eqz v3, :cond_1

    move v3, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 587
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lgnu/math/DateTime;

    invoke-static {v3, v4}, Lgnu/math/DateTime;->sub(Lgnu/math/DateTime;Lgnu/math/DateTime;)Lgnu/math/Duration;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 588
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

.method public addReversed(Lgnu/math/Numeric;I)Lgnu/math/Numeric;
    .locals 7

    .prologue
    .line 593
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move-object v1, p1

    .local v1, "x":Lgnu/math/Numeric;
    move v2, p2

    .local v2, "k":I
    move-object v3, v1

    instance-of v3, v3, Lgnu/math/Duration;

    if-eqz v3, :cond_0

    move v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 594
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lgnu/math/Duration;

    move v5, v2

    invoke-static {v3, v4, v5}, Lgnu/math/DateTime;->add(Lgnu/math/DateTime;Lgnu/math/Duration;I)Lgnu/math/DateTime;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lgnu/math/DateTime;
    return-object v0

    .line 595
    .restart local v0    # "this":Lgnu/math/DateTime;
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

.method public adjustTimezone(I)Lgnu/math/DateTime;
    .locals 11

    .prologue
    .line 483
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move v1, p1

    .local v1, "newOffset":I
    new-instance v6, Lgnu/math/DateTime;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    iget v8, v8, Lgnu/math/DateTime;->mask:I

    move-object v9, v0

    iget-object v9, v9, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v9}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/GregorianCalendar;

    invoke-direct {v7, v8, v9}, Lgnu/math/DateTime;-><init>(ILjava/util/GregorianCalendar;)V

    move-object v2, v6

    .line 485
    .local v2, "r":Lgnu/math/DateTime;
    move v6, v1

    if-nez v6, :cond_1

    .line 486
    sget-object v6, Lgnu/math/DateTime;->GMT:Ljava/util/TimeZone;

    move-object v3, v6

    .line 493
    .local v3, "zone":Ljava/util/TimeZone;
    :goto_0
    move-object v6, v2

    iget-object v6, v6, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 494
    move-object v6, v2

    iget v6, v6, Lgnu/math/DateTime;->mask:I

    const/16 v7, 0x80

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_2

    .line 496
    move-object v6, v0

    iget-object v6, v6, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v6}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v6

    move-wide v4, v6

    .line 497
    .local v4, "millis":J
    move-object v6, v2

    iget-object v6, v6, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 498
    move-object v6, v0

    iget v6, v6, Lgnu/math/DateTime;->mask:I

    const/16 v7, 0x70

    and-int/lit8 v6, v6, 0x70

    if-nez v6, :cond_0

    .line 500
    move-object v6, v2

    iget-object v6, v6, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 501
    move-object v6, v2

    iget-object v6, v6, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 502
    move-object v6, v2

    iget-object v6, v6, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v7, 0xd

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 503
    move-object v6, v2

    const/4 v7, 0x0

    iput v7, v6, Lgnu/math/DateTime;->nanoSeconds:I

    .line 505
    .line 508
    .end local v4    # "millis":J
    :cond_0
    :goto_1
    move-object v6, v2

    move-object v0, v6

    .end local v0    # "this":Lgnu/math/DateTime;
    return-object v0

    .line 489
    .end local v3    # "zone":Ljava/util/TimeZone;
    .restart local v0    # "this":Lgnu/math/DateTime;
    :cond_1
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "GMT"

    invoke-direct {v7, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v4, v6

    .line 490
    .local v4, "sbuf":Ljava/lang/StringBuffer;
    move v6, v1

    move-object v7, v4

    invoke-static {v6, v7}, Lgnu/math/DateTime;->toStringZone(ILjava/lang/StringBuffer;)V

    .line 491
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    move-object v3, v6

    .restart local v3    # "zone":Ljava/util/TimeZone;
    goto :goto_0

    .line 507
    .end local v4    # "sbuf":Ljava/lang/StringBuffer;
    :cond_2
    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lgnu/math/DateTime;->mask:I

    const/16 v8, 0x80

    or-int/lit16 v7, v7, 0x80

    iput v7, v6, Lgnu/math/DateTime;->mask:I

    goto :goto_1
.end method

.method public cast(I)Lgnu/math/DateTime;
    .locals 10

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move v1, p1

    .local v1, "newComponents":I
    move-object v5, v0

    iget v5, v5, Lgnu/math/DateTime;->mask:I

    const/16 v6, -0x81

    and-int/lit16 v5, v5, -0x81

    move v2, v5

    .line 56
    .local v2, "oldComponents":I
    move v5, v1

    move v6, v2

    if-ne v5, v6, :cond_0

    .line 57
    move-object v5, v0

    move-object v0, v5

    .line 87
    .end local v0    # "this":Lgnu/math/DateTime;
    :goto_0
    return-object v0

    .line 58
    .restart local v0    # "this":Lgnu/math/DateTime;
    :cond_0
    new-instance v5, Lgnu/math/DateTime;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move v7, v1

    move-object v8, v0

    iget-object v8, v8, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v8}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/GregorianCalendar;

    invoke-direct {v6, v7, v8}, Lgnu/math/DateTime;-><init>(ILjava/util/GregorianCalendar;)V

    move-object v3, v5

    .line 60
    .local v3, "copy":Lgnu/math/DateTime;
    move v5, v1

    move v6, v2

    const/4 v7, -0x1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    if-eqz v5, :cond_2

    move v5, v2

    const/16 v6, 0xe

    if-ne v5, v6, :cond_1

    move v5, v1

    const/16 v6, 0x7e

    if-eq v5, v6, :cond_2

    .line 64
    :cond_1
    new-instance v5, Ljava/lang/ClassCastException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "cannot cast DateTime - missing conponents"

    invoke-direct {v6, v7}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 65
    :cond_2
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/math/DateTime;->isZoneUnspecified()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 66
    move-object v5, v3

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lgnu/math/DateTime;->mask:I

    const/16 v7, -0x81

    and-int/lit16 v6, v6, -0x81

    iput v6, v5, Lgnu/math/DateTime;->mask:I

    .line 69
    :goto_1
    move v5, v2

    move v6, v1

    const/4 v7, -0x1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    move v4, v5

    .line 70
    .local v4, "extraComponents":I
    move v5, v4

    const/16 v6, 0x70

    and-int/lit8 v5, v5, 0x70

    if-eqz v5, :cond_7

    .line 72
    move-object v5, v3

    iget-object v5, v5, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 73
    move-object v5, v3

    iget-object v5, v5, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 74
    move-object v5, v3

    iget-object v5, v5, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 78
    :goto_2
    move v5, v4

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    .line 80
    move-object v5, v3

    iget-object v5, v5, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 81
    move-object v5, v3

    iget-object v5, v5, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 83
    :cond_3
    move v5, v4

    const/4 v6, 0x4

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_4

    .line 84
    move-object v5, v3

    iget-object v5, v5, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 85
    :cond_4
    move v5, v4

    const/16 v6, 0x8

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_5

    .line 86
    move-object v5, v3

    iget-object v5, v5, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->clear(I)V

    .line 87
    :cond_5
    move-object v5, v3

    move-object v0, v5

    goto/16 :goto_0

    .line 68
    .end local v4    # "extraComponents":I
    :cond_6
    move-object v5, v3

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lgnu/math/DateTime;->mask:I

    const/16 v7, 0x80

    or-int/lit16 v6, v6, 0x80

    iput v6, v5, Lgnu/math/DateTime;->mask:I

    goto :goto_1

    .line 77
    .restart local v4    # "extraComponents":I
    :cond_7
    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Lgnu/math/DateTime;->nanoSeconds:I

    iput v6, v5, Lgnu/math/DateTime;->nanoSeconds:I

    goto :goto_2
.end method

.method public compare(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/DateTime;

    if-eqz v2, :cond_0

    .line 449
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lgnu/math/DateTime;

    invoke-static {v2, v3}, Lgnu/math/DateTime;->compare(Lgnu/math/DateTime;Lgnu/math/DateTime;)I

    move-result v2

    move v0, v2

    .line 450
    .end local v0    # "this":Lgnu/math/DateTime;
    :goto_0
    return v0

    .restart local v0    # "this":Lgnu/math/DateTime;
    :cond_0
    move-object v2, v1

    check-cast v2, Lgnu/math/Numeric;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lgnu/math/Numeric;->compareReversed(Lgnu/math/Numeric;)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public components()I
    .locals 3

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move-object v1, v0

    iget v1, v1, Lgnu/math/DateTime;->mask:I

    const/16 v2, -0x81

    and-int/lit16 v1, v1, -0x81

    move v0, v1

    .end local v0    # "this":Lgnu/math/DateTime;
    return v0
.end method

.method public getDay()I
    .locals 3

    .prologue
    .line 391
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/math/DateTime;
    return v0
.end method

.method public getHours()I
    .locals 3

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/math/DateTime;
    return v0
.end method

.method public getMinutes()I
    .locals 3

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/math/DateTime;
    return v0
.end method

.method public getMonth()I
    .locals 3

    .prologue
    .line 386
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    .end local v0    # "this":Lgnu/math/DateTime;
    return v0
.end method

.method public getNanoSecondsOnly()I
    .locals 2

    .prologue
    .line 416
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move-object v1, v0

    iget v1, v1, Lgnu/math/DateTime;->nanoSeconds:I

    move v0, v1

    .end local v0    # "this":Lgnu/math/DateTime;
    return v0
.end method

.method public getSecondsOnly()I
    .locals 3

    .prologue
    .line 406
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/math/DateTime;
    return v0
.end method

.method public getWholeSeconds()I
    .locals 3

    .prologue
    .line 411
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lgnu/math/DateTime;
    return v0
.end method

.method public getYear()I
    .locals 4

    .prologue
    .line 378
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move-object v2, v0

    iget-object v2, v2, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    move v1, v2

    .line 379
    .local v1, "year":I
    move-object v2, v0

    iget-object v2, v2, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 380
    const/4 v2, 0x1

    move v3, v1

    rsub-int/lit8 v2, v3, 0x1

    move v1, v2

    .line 381
    :cond_0
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lgnu/math/DateTime;
    return v0
.end method

.method public getZoneMinutes()I
    .locals 3

    .prologue
    .line 655
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    const v2, 0xea60

    div-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lgnu/math/DateTime;
    return v0
.end method

.method public isExact()Z
    .locals 3

    .prologue
    .line 725
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move-object v1, v0

    iget v1, v1, Lgnu/math/DateTime;->mask:I

    const/16 v2, 0x70

    and-int/lit8 v1, v1, 0x70

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/math/DateTime;
    return v0

    .restart local v0    # "this":Lgnu/math/DateTime;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isZero()Z
    .locals 5

    .prologue
    .line 730
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    new-instance v1, Ljava/lang/Error;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "DateTime.isZero not meaningful!"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isZoneUnspecified()Z
    .locals 3

    .prologue
    .line 650
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move-object v1, v0

    iget v1, v1, Lgnu/math/DateTime;->mask:I

    const/16 v2, 0x80

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lgnu/math/DateTime;
    return v0

    .restart local v0    # "this":Lgnu/math/DateTime;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public number()Lgnu/math/Complex;
    .locals 5

    .prologue
    .line 736
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    new-instance v1, Ljava/lang/Error;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "number needs to be implemented!"

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method parseDate(Ljava/lang/String;II)I
    .locals 16

    .prologue
    .line 136
    move-object/from16 v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move-object/from16 v1, p1

    .local v1, "str":Ljava/lang/String;
    move/from16 v2, p2

    .local v2, "start":I
    move/from16 v3, p3

    .local v3, "mask":I
    move v12, v2

    if-gez v12, :cond_0

    .line 137
    move v12, v2

    move v0, v12

    .line 205
    .end local v0    # "this":Lgnu/math/DateTime;
    :goto_0
    return v0

    .line 138
    .restart local v0    # "this":Lgnu/math/DateTime;
    :cond_0
    move-object v12, v1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    move v4, v12

    .line 139
    .local v4, "len":I
    const/4 v12, 0x0

    move v5, v12

    .line 140
    .local v5, "negYear":Z
    move v12, v2

    move v13, v4

    if-ge v12, v13, :cond_1

    move-object v12, v1

    move v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2d

    if-ne v12, v13, :cond_1

    .line 142
    add-int/lit8 v2, v2, 0x1

    .line 143
    const/4 v12, 0x1

    move v5, v12

    .line 145
    :cond_1
    move v12, v2

    move v6, v12

    .line 147
    .local v6, "pos":I
    move v12, v3

    const/4 v13, 0x2

    and-int/lit8 v12, v12, 0x2

    if-nez v12, :cond_3

    .line 149
    move v12, v5

    if-nez v12, :cond_2

    .line 150
    const/4 v12, -0x1

    move v0, v12

    goto :goto_0

    .line 151
    :cond_2
    const/4 v12, -0x1

    move v8, v12

    .line 168
    .local v8, "year":I
    :goto_1
    move v12, v3

    const/16 v13, 0xc

    and-int/lit8 v12, v12, 0xc

    if-nez v12, :cond_8

    .line 169
    move v12, v6

    move v0, v12

    goto :goto_0

    .line 155
    .end local v8    # "year":I
    :cond_3
    move-object v12, v1

    move v13, v6

    invoke-static {v12, v13}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result v12

    move v7, v12

    .line 156
    .local v7, "part":I
    move v12, v7

    const/16 v13, 0x10

    shr-int/lit8 v12, v12, 0x10

    move v8, v12

    .line 157
    .restart local v8    # "year":I
    move v12, v7

    const v13, 0xffff

    and-int/2addr v12, v13

    move v6, v12

    .line 158
    move v12, v6

    move v13, v2

    const/4 v14, 0x4

    add-int/lit8 v13, v13, 0x4

    if-eq v12, v13, :cond_5

    move v12, v6

    move v13, v2

    const/4 v14, 0x4

    add-int/lit8 v13, v13, 0x4

    if-le v12, v13, :cond_4

    move-object v12, v1

    move v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x30

    if-ne v12, v13, :cond_5

    .line 159
    :cond_4
    const/4 v12, -0x1

    move v0, v12

    goto :goto_0

    .line 160
    :cond_5
    move v12, v5

    if-nez v12, :cond_6

    move v12, v8

    if-nez v12, :cond_7

    .line 162
    :cond_6
    move-object v12, v0

    iget-object v12, v12, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Ljava/util/GregorianCalendar;->set(II)V

    .line 163
    move-object v12, v0

    iget-object v12, v12, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v13, 0x1

    move v14, v8

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v12, v13, v14}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_1

    .line 166
    :cond_7
    move-object v12, v0

    iget-object v12, v12, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v13, 0x1

    move v14, v8

    invoke-virtual {v12, v13, v14}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_1

    .line 170
    .end local v7    # "part":I
    :cond_8
    move v12, v6

    move v13, v4

    if-ge v12, v13, :cond_9

    move-object v12, v1

    move v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2d

    if-eq v12, v13, :cond_a

    .line 171
    :cond_9
    const/4 v12, -0x1

    move v0, v12

    goto/16 :goto_0

    .line 172
    :cond_a
    add-int/lit8 v6, v6, 0x1

    move v12, v6

    move v2, v12

    .line 173
    move v12, v3

    const/4 v13, 0x4

    and-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_d

    .line 175
    move-object v12, v1

    move v13, v2

    invoke-static {v12, v13}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result v12

    move v7, v12

    .line 176
    .restart local v7    # "part":I
    move v12, v7

    const/16 v13, 0x10

    shr-int/lit8 v12, v12, 0x10

    move v9, v12

    .line 177
    .local v9, "month":I
    move v12, v7

    const v13, 0xffff

    and-int/2addr v12, v13

    move v6, v12

    .line 178
    move v12, v9

    if-lez v12, :cond_b

    move v12, v9

    const/16 v13, 0xc

    if-gt v12, v13, :cond_b

    move v12, v6

    move v13, v2

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    if-eq v12, v13, :cond_c

    .line 179
    :cond_b
    const/4 v12, -0x1

    move v0, v12

    goto/16 :goto_0

    .line 180
    :cond_c
    move-object v12, v0

    iget-object v12, v12, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v13, 0x2

    move v14, v9

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v12, v13, v14}, Ljava/util/GregorianCalendar;->set(II)V

    .line 181
    move v12, v3

    const/16 v13, 0x8

    and-int/lit8 v12, v12, 0x8

    if-nez v12, :cond_e

    .line 182
    move v12, v6

    move v0, v12

    goto/16 :goto_0

    .line 185
    .end local v7    # "part":I
    .end local v9    # "month":I
    :cond_d
    const/4 v12, -0x1

    move v9, v12

    .line 186
    .restart local v9    # "month":I
    :cond_e
    move v12, v6

    move v13, v4

    if-ge v12, v13, :cond_f

    move-object v12, v1

    move v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2d

    if-eq v12, v13, :cond_10

    .line 187
    :cond_f
    const/4 v12, -0x1

    move v0, v12

    goto/16 :goto_0

    .line 188
    :cond_10
    move v12, v6

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v2, v12

    .line 189
    move-object v12, v1

    move v13, v2

    invoke-static {v12, v13}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result v12

    move v7, v12

    .line 190
    .restart local v7    # "part":I
    move v12, v7

    const/16 v13, 0x10

    shr-int/lit8 v12, v12, 0x10

    move v10, v12

    .line 191
    .local v10, "day":I
    move v12, v7

    const v13, 0xffff

    and-int/2addr v12, v13

    move v6, v12

    .line 192
    move v12, v10

    if-lez v12, :cond_13

    move v12, v6

    move v13, v2

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    if-ne v12, v13, :cond_13

    .line 195
    move v12, v3

    const/4 v13, 0x4

    and-int/lit8 v12, v12, 0x4

    if-nez v12, :cond_11

    .line 196
    const/16 v12, 0x1f

    move v11, v12

    .line 199
    .local v11, "maxDay":I
    :goto_2
    move v12, v10

    move v13, v11

    if-gt v12, v13, :cond_13

    .line 201
    move-object v12, v0

    iget-object v12, v12, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v13, 0x5

    move v14, v10

    invoke-virtual {v12, v13, v14}, Ljava/util/GregorianCalendar;->set(II)V

    .line 202
    move v12, v6

    move v0, v12

    goto/16 :goto_0

    .line 198
    .end local v11    # "maxDay":I
    :cond_11
    move v12, v9

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v13, v3

    const/4 v14, 0x2

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_12

    move v13, v8

    :goto_3
    invoke-static {v12, v13}, Lgnu/math/DateTime;->daysInMonth(II)I

    move-result v12

    move v11, v12

    .restart local v11    # "maxDay":I
    goto :goto_2

    .end local v11    # "maxDay":I
    :cond_12
    const/16 v13, 0x7d0

    goto :goto_3

    .line 205
    :cond_13
    const/4 v12, -0x1

    move v0, v12

    goto/16 :goto_0
.end method

.method parseTime(Ljava/lang/String;I)I
    .locals 15

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move-object/from16 v1, p1

    .local v1, "str":Ljava/lang/String;
    move/from16 v2, p2

    .local v2, "start":I
    move v12, v2

    if-gez v12, :cond_0

    .line 300
    move v12, v2

    move v0, v12

    .line 353
    .end local v0    # "this":Lgnu/math/DateTime;
    :goto_0
    return v0

    .line 301
    .restart local v0    # "this":Lgnu/math/DateTime;
    :cond_0
    move-object v12, v1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    move v3, v12

    .line 302
    .local v3, "len":I
    move v12, v2

    move v4, v12

    .line 303
    .local v4, "pos":I
    move-object v12, v1

    move v13, v2

    invoke-static {v12, v13}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result v12

    move v5, v12

    .line 304
    .local v5, "part":I
    move v12, v5

    const/16 v13, 0x10

    shr-int/lit8 v12, v12, 0x10

    move v6, v12

    .line 305
    .local v6, "hour":I
    move v12, v5

    const v13, 0xffff

    and-int/2addr v12, v13

    move v4, v12

    .line 306
    move v12, v6

    const/16 v13, 0x18

    if-gt v12, v13, :cond_9

    move v12, v4

    move v13, v2

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    if-ne v12, v13, :cond_9

    move v12, v4

    move v13, v3

    if-eq v12, v13, :cond_9

    move-object v12, v1

    move v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x3a

    if-ne v12, v13, :cond_9

    .line 308
    move v12, v4

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v2, v12

    .line 309
    move-object v12, v1

    move v13, v2

    invoke-static {v12, v13}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result v12

    move v5, v12

    .line 310
    move v12, v5

    const/16 v13, 0x10

    shr-int/lit8 v12, v12, 0x10

    move v7, v12

    .line 311
    .local v7, "minute":I
    move v12, v5

    const v13, 0xffff

    and-int/2addr v12, v13

    move v4, v12

    .line 312
    move v12, v7

    const/16 v13, 0x3c

    if-ge v12, v13, :cond_9

    move v12, v4

    move v13, v2

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    if-ne v12, v13, :cond_9

    move v12, v4

    move v13, v3

    if-eq v12, v13, :cond_9

    move-object v12, v1

    move v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x3a

    if-ne v12, v13, :cond_9

    .line 315
    move v12, v4

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v2, v12

    .line 316
    move-object v12, v1

    move v13, v2

    invoke-static {v12, v13}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result v12

    move v5, v12

    .line 317
    move v12, v5

    const/16 v13, 0x10

    shr-int/lit8 v12, v12, 0x10

    move v8, v12

    .line 318
    .local v8, "second":I
    move v12, v5

    const v13, 0xffff

    and-int/2addr v12, v13

    move v4, v12

    .line 320
    move v12, v8

    const/16 v13, 0x3c

    if-ge v12, v13, :cond_9

    move v12, v4

    move v13, v2

    const/4 v14, 0x2

    add-int/lit8 v13, v13, 0x2

    if-ne v12, v13, :cond_9

    .line 322
    move v12, v4

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v3

    if-ge v12, v13, :cond_6

    move-object v12, v1

    move v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2e

    if-ne v12, v13, :cond_6

    move-object v12, v1

    move v13, v4

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0xa

    invoke-static {v12, v13}, Ljava/lang/Character;->digit(CI)I

    move-result v12

    if-ltz v12, :cond_6

    .line 325
    move v12, v4

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v2, v12

    .line 326
    move v12, v2

    move v4, v12

    .line 327
    const/4 v12, 0x0

    move v9, v12

    .line 328
    .local v9, "nanos":I
    const/4 v12, 0x0

    move v10, v12

    .line 329
    .local v10, "nfrac":I
    :goto_1
    move v12, v4

    move v13, v3

    if-ge v12, v13, :cond_1

    .line 331
    move-object v12, v1

    move v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0xa

    invoke-static {v12, v13}, Ljava/lang/Character;->digit(CI)I

    move-result v12

    move v11, v12

    .line 332
    .local v11, "dig":I
    move v12, v11

    if-gez v12, :cond_2

    .line 333
    .line 339
    .end local v11    # "dig":I
    :cond_1
    :goto_2
    move v12, v10

    add-int/lit8 v10, v10, 0x1

    const/16 v13, 0x9

    if-ge v12, v13, :cond_5

    .line 340
    const/16 v12, 0xa

    move v13, v9

    mul-int/2addr v12, v13

    move v9, v12

    goto :goto_2

    .line 334
    .restart local v11    # "dig":I
    :cond_2
    move v12, v10

    const/16 v13, 0x9

    if-ge v12, v13, :cond_4

    .line 335
    const/16 v12, 0xa

    move v13, v9

    mul-int/2addr v12, v13

    move v13, v11

    add-int/2addr v12, v13

    move v9, v12

    .line 329
    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 336
    :cond_4
    move v12, v10

    const/16 v13, 0x9

    if-ne v12, v13, :cond_3

    move v12, v11

    const/4 v13, 0x5

    if-lt v12, v13, :cond_3

    .line 337
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 341
    .end local v11    # "dig":I
    :cond_5
    move-object v12, v0

    move v13, v9

    iput v13, v12, Lgnu/math/DateTime;->nanoSeconds:I

    .line 343
    .end local v9    # "nanos":I
    .end local v10    # "nfrac":I
    :cond_6
    move v12, v6

    const/16 v13, 0x18

    if-ne v12, v13, :cond_8

    move v12, v7

    if-nez v12, :cond_7

    move v12, v8

    if-nez v12, :cond_7

    move-object v12, v0

    iget v12, v12, Lgnu/math/DateTime;->nanoSeconds:I

    if-eqz v12, :cond_8

    .line 345
    :cond_7
    const/4 v12, -0x1

    move v0, v12

    goto/16 :goto_0

    .line 346
    :cond_8
    move-object v12, v0

    iget-object v12, v12, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v13, 0xb

    move v14, v6

    invoke-virtual {v12, v13, v14}, Ljava/util/GregorianCalendar;->set(II)V

    .line 347
    move-object v12, v0

    iget-object v12, v12, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v13, 0xc

    move v14, v7

    invoke-virtual {v12, v13, v14}, Ljava/util/GregorianCalendar;->set(II)V

    .line 348
    move-object v12, v0

    iget-object v12, v12, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v13, 0xd

    move v14, v8

    invoke-virtual {v12, v13, v14}, Ljava/util/GregorianCalendar;->set(II)V

    .line 349
    move v12, v4

    move v0, v12

    goto/16 :goto_0

    .line 353
    .end local v7    # "minute":I
    .end local v8    # "second":I
    :cond_9
    const/4 v12, -0x1

    move v0, v12

    goto/16 :goto_0
.end method

.method parseZone(Ljava/lang/String;I)I
    .locals 12

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move v2, p2

    .local v2, "start":I
    move v7, v2

    if-gez v7, :cond_0

    .line 234
    move v7, v2

    move v0, v7

    .line 249
    .end local v0    # "this":Lgnu/math/DateTime;
    :goto_0
    return v0

    .line 235
    .restart local v0    # "this":Lgnu/math/DateTime;
    :cond_0
    move-object v7, v0

    move-object v8, v1

    move v9, v2

    invoke-virtual {v7, v8, v9}, Lgnu/math/DateTime;->parseZoneMinutes(Ljava/lang/String;I)I

    move-result v7

    move v3, v7

    .line 236
    .local v3, "part":I
    move v7, v3

    if-nez v7, :cond_1

    .line 237
    const/4 v7, -0x1

    move v0, v7

    goto :goto_0

    .line 238
    :cond_1
    move v7, v3

    move v8, v2

    if-ne v7, v8, :cond_2

    .line 239
    move v7, v2

    move v0, v7

    goto :goto_0

    .line 240
    :cond_2
    move v7, v3

    const/16 v8, 0x10

    shr-int/lit8 v7, v7, 0x10

    move v4, v7

    .line 242
    .local v4, "minutes":I
    move v7, v3

    const v8, 0xffff

    and-int/2addr v7, v8

    move v6, v7

    .line 243
    .local v6, "pos":I
    move v7, v4

    if-nez v7, :cond_3

    .line 244
    sget-object v7, Lgnu/math/DateTime;->GMT:Ljava/util/TimeZone;

    move-object v5, v7

    .line 247
    .local v5, "zone":Ljava/util/TimeZone;
    :goto_1
    move-object v7, v0

    iget-object v7, v7, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 248
    move-object v7, v0

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    iget v8, v8, Lgnu/math/DateTime;->mask:I

    const/16 v9, 0x80

    or-int/lit16 v8, v8, 0x80

    iput v8, v7, Lgnu/math/DateTime;->mask:I

    .line 249
    move v7, v6

    move v0, v7

    goto :goto_0

    .line 246
    .end local v5    # "zone":Ljava/util/TimeZone;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "GMT"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    move v9, v2

    move v10, v6

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    move-object v5, v7

    .restart local v5    # "zone":Ljava/util/TimeZone;
    goto :goto_1
.end method

.method parseZoneMinutes(Ljava/lang/String;I)I
    .locals 12

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move-object v1, p1

    .local v1, "str":Ljava/lang/String;
    move v2, p2

    .local v2, "start":I
    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move v3, v9

    .line 257
    .local v3, "len":I
    move v9, v2

    move v10, v3

    if-eq v9, v10, :cond_0

    move v9, v2

    if-gez v9, :cond_1

    .line 258
    :cond_0
    move v9, v2

    move v0, v9

    .line 294
    .end local v0    # "this":Lgnu/math/DateTime;
    :goto_0
    return v0

    .line 259
    .restart local v0    # "this":Lgnu/math/DateTime;
    :cond_1
    move-object v9, v1

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move v4, v9

    .line 260
    .local v4, "ch":C
    move v9, v4

    const/16 v10, 0x5a

    if-ne v9, v10, :cond_2

    .line 261
    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v0, v9

    goto :goto_0

    .line 262
    :cond_2
    move v9, v4

    const/16 v10, 0x2b

    if-eq v9, v10, :cond_3

    move v9, v4

    const/16 v10, 0x2d

    if-eq v9, v10, :cond_3

    .line 263
    move v9, v2

    move v0, v9

    goto :goto_0

    .line 264
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 265
    move-object v9, v1

    move v10, v2

    invoke-static {v9, v10}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result v9

    move v5, v9

    .line 266
    .local v5, "part":I
    move v9, v5

    const/16 v10, 0x10

    shr-int/lit8 v9, v9, 0x10

    move v6, v9

    .line 267
    .local v6, "hour":I
    move v9, v6

    const/16 v10, 0xe

    if-le v9, v10, :cond_4

    .line 268
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 269
    :cond_4
    const/16 v9, 0x3c

    move v10, v6

    mul-int/2addr v9, v10

    move v7, v9

    .line 270
    .local v7, "minute":I
    move v9, v5

    const v10, 0xffff

    and-int/2addr v9, v10

    move v8, v9

    .line 271
    .local v8, "pos":I
    move v9, v8

    move v10, v2

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    if-eq v9, v10, :cond_5

    .line 272
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 273
    :cond_5
    move v9, v8

    move v10, v3

    if-ge v9, v10, :cond_8

    .line 275
    move-object v9, v1

    move v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x3a

    if-ne v9, v10, :cond_9

    .line 277
    move v9, v8

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v2, v9

    .line 278
    move-object v9, v1

    move v10, v2

    invoke-static {v9, v10}, Lgnu/math/DateTime;->parseDigits(Ljava/lang/String;I)I

    move-result v9

    move v5, v9

    .line 279
    move v9, v5

    const v10, 0xffff

    and-int/2addr v9, v10

    move v8, v9

    .line 280
    move v9, v5

    const/16 v10, 0x10

    shr-int/lit8 v9, v9, 0x10

    move v5, v9

    .line 281
    move v9, v5

    if-lez v9, :cond_7

    move v9, v5

    const/16 v10, 0x3c

    if-ge v9, v10, :cond_6

    move v9, v6

    const/16 v10, 0xe

    if-ne v9, v10, :cond_7

    .line 282
    :cond_6
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_0

    .line 283
    :cond_7
    move v9, v7

    move v10, v5

    add-int/2addr v9, v10

    move v7, v9

    .line 284
    move v9, v8

    move v10, v2

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    if-eq v9, v10, :cond_9

    .line 285
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_0

    .line 289
    :cond_8
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_0

    .line 290
    :cond_9
    move v9, v7

    const/16 v10, 0x348

    if-le v9, v10, :cond_a

    .line 291
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_0

    .line 292
    :cond_a
    move v9, v4

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_b

    .line 293
    move v9, v7

    neg-int v9, v9

    move v7, v9

    .line 294
    :cond_b
    move v9, v7

    const/16 v10, 0x10

    shl-int/lit8 v9, v9, 0x10

    move v10, v8

    or-int/2addr v9, v10

    move v0, v9

    goto/16 :goto_0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 4

    .prologue
    .line 672
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move-object v1, p1

    .local v1, "timeZone":Ljava/util/TimeZone;
    move-object v2, v0

    iget-object v2, v2, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 673
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 718
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v2

    .line 719
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/math/DateTime;->toString(Ljava/lang/StringBuffer;)V

    .line 720
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/math/DateTime;
    return-object v0
.end method

.method public toString(Ljava/lang/StringBuffer;)V
    .locals 7

    .prologue
    .line 702
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move-object v1, p1

    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v5, v0

    invoke-virtual {v5}, Lgnu/math/DateTime;->components()I

    move-result v5

    move v2, v5

    .line 703
    .local v2, "mask":I
    move v5, v2

    const/16 v6, 0xe

    and-int/lit8 v5, v5, 0xe

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_0
    move v3, v5

    .line 704
    .local v3, "hasDate":Z
    move v5, v2

    const/16 v6, 0x70

    and-int/lit8 v5, v5, 0x70

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    :goto_1
    move v4, v5

    .line 705
    .local v4, "hasTime":Z
    move v5, v3

    if-eqz v5, :cond_0

    .line 707
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/math/DateTime;->toStringDate(Ljava/lang/StringBuffer;)V

    .line 708
    move v5, v4

    if-eqz v5, :cond_0

    .line 709
    move-object v5, v1

    const/16 v6, 0x54

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    .line 711
    :cond_0
    move v5, v4

    if-eqz v5, :cond_1

    .line 712
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/math/DateTime;->toStringTime(Ljava/lang/StringBuffer;)V

    .line 713
    :cond_1
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lgnu/math/DateTime;->toStringZone(Ljava/lang/StringBuffer;)V

    .line 714
    return-void

    .line 703
    .end local v3    # "hasDate":Z
    .end local v4    # "hasTime":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 704
    .restart local v3    # "hasDate":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public toStringDate(Ljava/lang/StringBuffer;)V
    .locals 7

    .prologue
    .line 609
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move-object v1, p1

    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/math/DateTime;->components()I

    move-result v4

    move v2, v4

    .line 610
    .local v2, "mask":I
    move v4, v2

    const/4 v5, 0x2

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    .line 612
    move-object v4, v0

    iget-object v4, v4, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    move v3, v4

    .line 613
    .local v3, "year":I
    move-object v4, v0

    iget-object v4, v4, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    if-nez v4, :cond_0

    .line 615
    add-int/lit8 v3, v3, -0x1

    .line 616
    move v4, v3

    if-eqz v4, :cond_0

    .line 617
    move-object v4, v1

    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 619
    :cond_0
    move v4, v3

    move-object v5, v1

    const/4 v6, 0x4

    invoke-static {v4, v5, v6}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    .line 620
    .line 623
    .end local v3    # "year":I
    :goto_0
    move v4, v2

    const/16 v5, 0xc

    and-int/lit8 v4, v4, 0xc

    if-eqz v4, :cond_2

    .line 625
    move-object v4, v1

    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 626
    move v4, v2

    const/4 v5, 0x4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 627
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/math/DateTime;->getMonth()I

    move-result v4

    move-object v5, v1

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    .line 628
    :cond_1
    move v4, v2

    const/16 v5, 0x8

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_2

    .line 630
    move-object v4, v1

    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 631
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/math/DateTime;->getDay()I

    move-result v4

    move-object v5, v1

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    .line 634
    :cond_2
    return-void

    .line 622
    :cond_3
    move-object v4, v1

    const/16 v5, 0x2d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    goto :goto_0
.end method

.method public toStringTime(Ljava/lang/StringBuffer;)V
    .locals 5

    .prologue
    .line 638
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move-object v1, p1

    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/DateTime;->getHours()I

    move-result v2

    move-object v3, v1

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    .line 639
    move-object v2, v1

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 640
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/DateTime;->getMinutes()I

    move-result v2

    move-object v3, v1

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    .line 641
    move-object v2, v1

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 642
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/DateTime;->getWholeSeconds()I

    move-result v2

    move-object v3, v1

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lgnu/math/DateTime;->append(ILjava/lang/StringBuffer;I)V

    .line 643
    move-object v2, v0

    iget v2, v2, Lgnu/math/DateTime;->nanoSeconds:I

    move-object v3, v1

    invoke-static {v2, v3}, Lgnu/math/Duration;->appendNanoSeconds(ILjava/lang/StringBuffer;)V

    .line 644
    return-void
.end method

.method public toStringZone(Ljava/lang/StringBuffer;)V
    .locals 4

    .prologue
    .line 677
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move-object v1, p1

    .local v1, "sbuf":Ljava/lang/StringBuffer;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/DateTime;->isZoneUnspecified()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 678
    .line 680
    :goto_0
    return-void

    .line 679
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/DateTime;->getZoneMinutes()I

    move-result v2

    move-object v3, v1

    invoke-static {v2, v3}, Lgnu/math/DateTime;->toStringZone(ILjava/lang/StringBuffer;)V

    .line 680
    goto :goto_0
.end method

.method public unit()Lgnu/math/Unit;
    .locals 2

    .prologue
    .line 733
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move-object v1, v0

    iget-object v1, v1, Lgnu/math/DateTime;->unit:Lgnu/math/Unit;

    move-object v0, v1

    .end local v0    # "this":Lgnu/math/DateTime;
    return-object v0
.end method

.method public withZoneUnspecified()Lgnu/math/DateTime;
    .locals 7

    .prologue
    .line 473
    move-object v0, p0

    .local v0, "this":Lgnu/math/DateTime;
    move-object v2, v0

    invoke-virtual {v2}, Lgnu/math/DateTime;->isZoneUnspecified()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 474
    move-object v2, v0

    move-object v0, v2

    .line 478
    .end local v0    # "this":Lgnu/math/DateTime;
    .local v1, "r":Lgnu/math/DateTime;
    :goto_0
    return-object v0

    .line 475
    .end local v1    # "r":Lgnu/math/DateTime;
    .restart local v0    # "this":Lgnu/math/DateTime;
    :cond_0
    new-instance v2, Lgnu/math/DateTime;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget v4, v4, Lgnu/math/DateTime;->mask:I

    move-object v5, v0

    iget-object v5, v5, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v5}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/GregorianCalendar;

    invoke-direct {v3, v4, v5}, Lgnu/math/DateTime;-><init>(ILjava/util/GregorianCalendar;)V

    move-object v1, v2

    .line 476
    .restart local v1    # "r":Lgnu/math/DateTime;
    move-object v2, v1

    iget-object v2, v2, Lgnu/math/DateTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 477
    move-object v2, v1

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lgnu/math/DateTime;->mask:I

    const/16 v4, -0x81

    and-int/lit16 v3, v3, -0x81

    iput v3, v2, Lgnu/math/DateTime;->mask:I

    .line 478
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method
