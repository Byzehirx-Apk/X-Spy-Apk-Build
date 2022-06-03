.class public Lgnu/kawa/xml/XTimeType;
.super Lgnu/kawa/xml/XDataType;
.source "XTimeType.java"


# static fields
.field public static final dateTimeType:Lgnu/kawa/xml/XTimeType;

.field public static final dateType:Lgnu/kawa/xml/XTimeType;

.field private static fixedTimeZone:Ljava/util/TimeZone;

.field public static final gDayType:Lgnu/kawa/xml/XTimeType;

.field public static final gMonthDayType:Lgnu/kawa/xml/XTimeType;

.field public static final gMonthType:Lgnu/kawa/xml/XTimeType;

.field public static final gYearMonthType:Lgnu/kawa/xml/XTimeType;

.field public static final gYearType:Lgnu/kawa/xml/XTimeType;

.field public static final timeType:Lgnu/kawa/xml/XTimeType;

.field static typeDateTime:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 13
    const-string/jumbo v0, "gnu.math.DateTime"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lgnu/kawa/xml/XTimeType;->typeDateTime:Lgnu/bytecode/ClassType;

    .line 15
    new-instance v0, Lgnu/kawa/xml/XTimeType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "dateTime"

    const/16 v3, 0x14

    invoke-direct {v1, v2, v3}, Lgnu/kawa/xml/XTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/XTimeType;->dateTimeType:Lgnu/kawa/xml/XTimeType;

    .line 18
    new-instance v0, Lgnu/kawa/xml/XTimeType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "date"

    const/16 v3, 0x15

    invoke-direct {v1, v2, v3}, Lgnu/kawa/xml/XTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/XTimeType;->dateType:Lgnu/kawa/xml/XTimeType;

    .line 20
    new-instance v0, Lgnu/kawa/xml/XTimeType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "time"

    const/16 v3, 0x16

    invoke-direct {v1, v2, v3}, Lgnu/kawa/xml/XTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/XTimeType;->timeType:Lgnu/kawa/xml/XTimeType;

    .line 22
    new-instance v0, Lgnu/kawa/xml/XTimeType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "gYearMonth"

    const/16 v3, 0x17

    invoke-direct {v1, v2, v3}, Lgnu/kawa/xml/XTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/XTimeType;->gYearMonthType:Lgnu/kawa/xml/XTimeType;

    .line 24
    new-instance v0, Lgnu/kawa/xml/XTimeType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "gYear"

    const/16 v3, 0x18

    invoke-direct {v1, v2, v3}, Lgnu/kawa/xml/XTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/XTimeType;->gYearType:Lgnu/kawa/xml/XTimeType;

    .line 26
    new-instance v0, Lgnu/kawa/xml/XTimeType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "gMonth"

    const/16 v3, 0x1b

    invoke-direct {v1, v2, v3}, Lgnu/kawa/xml/XTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/XTimeType;->gMonthType:Lgnu/kawa/xml/XTimeType;

    .line 28
    new-instance v0, Lgnu/kawa/xml/XTimeType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "gMonthDay"

    const/16 v3, 0x19

    invoke-direct {v1, v2, v3}, Lgnu/kawa/xml/XTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/XTimeType;->gMonthDayType:Lgnu/kawa/xml/XTimeType;

    .line 30
    new-instance v0, Lgnu/kawa/xml/XTimeType;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string/jumbo v2, "gDay"

    const/16 v3, 0x1a

    invoke-direct {v1, v2, v3}, Lgnu/kawa/xml/XTimeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lgnu/kawa/xml/XTimeType;->gDayType:Lgnu/kawa/xml/XTimeType;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XTimeType;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "code":I
    move-object v3, v0

    move-object v4, v1

    sget-object v5, Lgnu/kawa/xml/XTimeType;->typeDateTime:Lgnu/bytecode/ClassType;

    move v6, v2

    invoke-direct {v3, v4, v5, v6}, Lgnu/kawa/xml/XDataType;-><init>(Ljava/lang/Object;Lgnu/bytecode/Type;I)V

    .line 36
    return-void
.end method

.method static components(I)I
    .locals 2

    .prologue
    .line 40
    move v0, p0

    .local v0, "typeCode":I
    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 65
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "typeCode":I
    :goto_0
    return v0

    .line 43
    .restart local v0    # "typeCode":I
    :pswitch_0
    const/16 v1, 0x7e

    move v0, v1

    goto :goto_0

    .line 45
    :pswitch_1
    const/16 v1, 0xe

    move v0, v1

    goto :goto_0

    .line 47
    :pswitch_2
    const/16 v1, 0x70

    move v0, v1

    goto :goto_0

    .line 49
    :pswitch_3
    const/4 v1, 0x6

    move v0, v1

    goto :goto_0

    .line 51
    :pswitch_4
    const/4 v1, 0x2

    move v0, v1

    goto :goto_0

    .line 53
    :pswitch_5
    const/16 v1, 0xc

    move v0, v1

    goto :goto_0

    .line 55
    :pswitch_6
    const/16 v1, 0x8

    move v0, v1

    goto :goto_0

    .line 57
    :pswitch_7
    const/4 v1, 0x4

    move v0, v1

    goto :goto_0

    .line 59
    :pswitch_8
    const/16 v1, 0x7e

    move v0, v1

    goto :goto_0

    .line 61
    :pswitch_9
    const/4 v1, 0x6

    move v0, v1

    goto :goto_0

    .line 63
    :pswitch_a
    const/16 v1, 0x78

    move v0, v1

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private static declared-synchronized fixedTimeZone()Ljava/util/TimeZone;
    .locals 4

    .prologue
    .line 87
    const-class v3, Lgnu/kawa/xml/XTimeType;

    monitor-enter v3

    :try_start_0
    sget-object v1, Lgnu/kawa/xml/XTimeType;->fixedTimeZone:Ljava/util/TimeZone;

    if-nez v1, :cond_0

    .line 89
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    const v2, 0xea60

    div-int/2addr v1, v2

    move v0, v1

    .line 90
    .local v0, "offset":I
    move v1, v0

    invoke-static {v1}, Lgnu/math/DateTime;->minutesToTimeZone(I)Ljava/util/TimeZone;

    move-result-object v1

    sput-object v1, Lgnu/kawa/xml/XTimeType;->fixedTimeZone:Ljava/util/TimeZone;

    .line 92
    :cond_0
    sget-object v1, Lgnu/kawa/xml/XTimeType;->fixedTimeZone:Ljava/util/TimeZone;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .end local v0    # "offset":I
    monitor-exit v3

    return-object v0

    .line 87
    .restart local v0    # "offset":I
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "offset":I
    throw v0
.end method

.method public static parseDateTime(Ljava/lang/String;I)Lgnu/math/DateTime;
    .locals 5

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "value":Ljava/lang/String;
    move v1, p1

    .local v1, "mask":I
    move-object v3, v0

    move v4, v1

    invoke-static {v3, v4}, Lgnu/math/DateTime;->parse(Ljava/lang/String;I)Lgnu/math/DateTime;

    move-result-object v3

    move-object v2, v3

    .line 104
    .local v2, "time":Lgnu/math/DateTime;
    move-object v3, v2

    invoke-virtual {v3}, Lgnu/math/DateTime;->isZoneUnspecified()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    move-object v3, v2

    invoke-static {}, Lgnu/kawa/xml/XTimeType;->fixedTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Lgnu/math/DateTime;->setTimeZone(Ljava/util/TimeZone;)V

    .line 106
    :cond_0
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "value":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public isInstance(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XTimeType;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v4, v1

    instance-of v4, v4, Lgnu/math/DateTime;

    if-nez v4, :cond_0

    .line 117
    const/4 v4, 0x0

    move v0, v4

    .line 121
    .end local v0    # "this":Lgnu/kawa/xml/XTimeType;
    :goto_0
    return v0

    .line 118
    .restart local v0    # "this":Lgnu/kawa/xml/XTimeType;
    :cond_0
    move-object v4, v0

    iget v4, v4, Lgnu/kawa/xml/XTimeType;->typeCode:I

    invoke-static {v4}, Lgnu/kawa/xml/XTimeType;->components(I)I

    move-result v4

    move v2, v4

    .line 119
    .local v2, "thisMask":I
    move-object v4, v1

    check-cast v4, Lgnu/math/DateTime;

    invoke-virtual {v4}, Lgnu/math/DateTime;->components()I

    move-result v4

    move v3, v4

    .line 121
    .local v3, "objMask":I
    move v4, v2

    move v5, v3

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public now()Lgnu/math/DateTime;
    .locals 6

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XTimeType;
    new-instance v1, Lgnu/math/DateTime;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    iget v3, v3, Lgnu/kawa/xml/XTimeType;->typeCode:I

    invoke-static {v3}, Lgnu/kawa/xml/XTimeType;->components(I)I

    move-result v3

    const/16 v4, 0x80

    or-int/lit16 v3, v3, 0x80

    invoke-static {}, Lgnu/kawa/xml/XTimeType;->fixedTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    check-cast v4, Ljava/util/GregorianCalendar;

    invoke-direct {v2, v3, v4}, Lgnu/math/DateTime;-><init>(ILjava/util/GregorianCalendar;)V

    move-object v0, v1

    .end local v0    # "this":Lgnu/kawa/xml/XTimeType;
    return-object v0
.end method

.method public valueOf(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lgnu/kawa/xml/XTimeType;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lgnu/kawa/xml/XTimeType;->typeCode:I

    invoke-static {v3}, Lgnu/kawa/xml/XTimeType;->components(I)I

    move-result v3

    invoke-static {v2, v3}, Lgnu/kawa/xml/XTimeType;->parseDateTime(Ljava/lang/String;I)Lgnu/math/DateTime;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lgnu/kawa/xml/XTimeType;
    return-object v0
.end method
