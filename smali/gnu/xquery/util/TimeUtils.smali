.class public Lgnu/xquery/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field static final currentDateTimeLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lgnu/math/DateTime;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 310
    new-instance v0, Ljava/lang/ThreadLocal;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lgnu/xquery/util/TimeUtils;->currentDateTimeLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    move-object v0, p0

    .local v0, "this":Lgnu/xquery/util/TimeUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustDateTimeToTimezone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "time":Ljava/lang/Object;
    move-object v1, v0

    invoke-static {}, Lgnu/xquery/util/TimeUtils;->getImplicitTimezone()Lgnu/math/Duration;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/xquery/util/TimeUtils;->adjustDateTimeToTimezone(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "time":Ljava/lang/Object;
    return-object v0
.end method

.method public static adjustDateTimeToTimezone(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 235
    move-object v0, p0

    .local v0, "time":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "zone":Ljava/lang/Object;
    move-object v3, v0

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v3, v4, :cond_0

    move-object v3, v0

    if-nez v3, :cond_1

    .line 236
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .line 238
    .end local v0    # "time":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 237
    .restart local v0    # "time":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v3, "adjust-dateTime-to-timezone"

    move-object v4, v0

    invoke-static {v3, v4}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v3

    move-object v2, v3

    .line 238
    .local v2, "dtime":Lgnu/math/DateTime;
    move-object v3, v2

    move-object v4, v1

    invoke-static {v3, v4}, Lgnu/xquery/util/TimeUtils;->adjustDateTimeToTimezoneRaw(Lgnu/math/DateTime;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method static adjustDateTimeToTimezoneRaw(Lgnu/math/DateTime;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 269
    move-object v0, p0

    .local v0, "dtime":Lgnu/math/DateTime;
    move-object v1, p1

    .local v1, "zone":Ljava/lang/Object;
    move-object v4, v1

    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v4, v5, :cond_0

    move-object v4, v1

    if-nez v4, :cond_1

    .line 270
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/math/DateTime;->withZoneUnspecified()Lgnu/math/DateTime;

    move-result-object v4

    move-object v0, v4

    .line 277
    .end local v0    # "dtime":Lgnu/math/DateTime;
    :goto_0
    return-object v0

    .line 271
    .restart local v0    # "dtime":Lgnu/math/DateTime;
    :cond_1
    move-object v4, v1

    check-cast v4, Lgnu/math/Duration;

    move-object v2, v4

    .line 272
    .local v2, "d":Lgnu/math/Duration;
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/math/Duration;->getNanoSecondsOnly()I

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v2

    invoke-virtual {v4}, Lgnu/math/Duration;->getSecondsOnly()I

    move-result v4

    if-eqz v4, :cond_3

    .line 273
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "timezone offset with fractional minute"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 274
    :cond_3
    move-object v4, v2

    invoke-virtual {v4}, Lgnu/math/Duration;->getTotalMinutes()J

    move-result-wide v4

    long-to-int v4, v4

    move v3, v4

    .line 275
    .local v3, "delta":I
    move v4, v3

    const/16 v5, -0x348

    if-lt v4, v5, :cond_4

    move v4, v3

    const/16 v5, 0x348

    if-le v4, v5, :cond_5

    .line 276
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "timezone offset out of range"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 277
    :cond_5
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Lgnu/math/DateTime;->adjustTimezone(I)Lgnu/math/DateTime;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public static adjustDateToTimezone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "time":Ljava/lang/Object;
    move-object v1, v0

    invoke-static {}, Lgnu/xquery/util/TimeUtils;->getImplicitTimezone()Lgnu/math/Duration;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/xquery/util/TimeUtils;->adjustDateToTimezone(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "time":Ljava/lang/Object;
    return-object v0
.end method

.method public static adjustDateToTimezone(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "time":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "zone":Ljava/lang/Object;
    move-object v3, v0

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v3, v4, :cond_0

    move-object v3, v0

    if-nez v3, :cond_1

    .line 249
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .line 251
    .end local v0    # "time":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 250
    .restart local v0    # "time":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v3, "adjust-date-to-timezone"

    move-object v4, v0

    invoke-static {v3, v4}, Lgnu/xquery/util/TimeUtils;->coerceToDate(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v3

    move-object v2, v3

    .line 251
    .local v2, "dtime":Lgnu/math/DateTime;
    move-object v3, v2

    move-object v4, v1

    invoke-static {v3, v4}, Lgnu/xquery/util/TimeUtils;->adjustDateTimeToTimezoneRaw(Lgnu/math/DateTime;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public static adjustTimeToTimezone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 256
    move-object v0, p0

    .local v0, "time":Ljava/lang/Object;
    move-object v1, v0

    invoke-static {}, Lgnu/xquery/util/TimeUtils;->getImplicitTimezone()Lgnu/math/Duration;

    move-result-object v2

    invoke-static {v1, v2}, Lgnu/xquery/util/TimeUtils;->adjustTimeToTimezone(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "time":Ljava/lang/Object;
    return-object v0
.end method

.method public static adjustTimeToTimezone(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "time":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "zone":Ljava/lang/Object;
    move-object v3, v0

    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v3, v4, :cond_0

    move-object v3, v0

    if-nez v3, :cond_1

    .line 262
    :cond_0
    move-object v3, v0

    move-object v0, v3

    .line 264
    .end local v0    # "time":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 263
    .restart local v0    # "time":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v3, "adjust-time-to-timezone"

    move-object v4, v0

    invoke-static {v3, v4}, Lgnu/xquery/util/TimeUtils;->coerceToTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v3

    move-object v2, v3

    .line 264
    .local v2, "dtime":Lgnu/math/DateTime;
    move-object v3, v2

    move-object v4, v1

    invoke-static {v3, v4}, Lgnu/xquery/util/TimeUtils;->adjustDateTimeToTimezoneRaw(Lgnu/math/DateTime;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method static asInteger(I)Lgnu/math/IntNum;
    .locals 2

    .prologue
    .line 59
    move v0, p0

    .local v0, "value":I
    move v1, v0

    invoke-static {v1}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "value":I
    return-object v0
.end method

.method static coerceToDate(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;
    .locals 9

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "fun":Ljava/lang/String;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    sget-object v2, Lgnu/kawa/xml/XTimeType;->dateType:Lgnu/kawa/xml/XTimeType;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/xml/XTimeType;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    move-object v2, v1

    check-cast v2, Lgnu/math/DateTime;

    move-object v0, v2

    .line 28
    .end local v0    # "fun":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 27
    .restart local v0    # "fun":Ljava/lang/String;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lgnu/kawa/xml/KNode;

    if-nez v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v2, :cond_2

    .line 28
    :cond_1
    move-object v2, v1

    invoke-static {v2}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xe

    invoke-static {v2, v3}, Lgnu/kawa/xml/XTimeType;->parseDateTime(Ljava/lang/String;I)Lgnu/math/DateTime;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 30
    :cond_2
    new-instance v2, Lgnu/mapping/WrongType;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x1

    move-object v6, v1

    const-string/jumbo v7, "xs:date"

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2
.end method

.method static coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;
    .locals 9

    .prologue
    .line 15
    move-object v0, p0

    .local v0, "fun":Ljava/lang/String;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    sget-object v2, Lgnu/kawa/xml/XTimeType;->dateTimeType:Lgnu/kawa/xml/XTimeType;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/xml/XTimeType;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16
    move-object v2, v1

    check-cast v2, Lgnu/math/DateTime;

    move-object v0, v2

    .line 18
    .end local v0    # "fun":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 17
    .restart local v0    # "fun":Ljava/lang/String;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lgnu/kawa/xml/KNode;

    if-nez v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v2, :cond_2

    .line 18
    :cond_1
    move-object v2, v1

    invoke-static {v2}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x7e

    invoke-static {v2, v3}, Lgnu/kawa/xml/XTimeType;->parseDateTime(Ljava/lang/String;I)Lgnu/math/DateTime;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 20
    :cond_2
    new-instance v2, Lgnu/mapping/WrongType;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x1

    move-object v6, v1

    const-string/jumbo v7, "xs:dateTime"

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2
.end method

.method static coerceToDuration(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/Duration;
    .locals 9

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "fun":Ljava/lang/String;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v1

    instance-of v2, v2, Lgnu/math/Duration;

    if-eqz v2, :cond_0

    .line 46
    move-object v2, v1

    check-cast v2, Lgnu/math/Duration;

    move-object v0, v2

    .end local v0    # "fun":Ljava/lang/String;
    return-object v0

    .line 47
    .restart local v0    # "fun":Ljava/lang/String;
    :cond_0
    new-instance v2, Lgnu/mapping/WrongType;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x1

    move-object v6, v1

    const-string/jumbo v7, "xs:duration"

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2
.end method

.method static coerceToTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;
    .locals 9

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "fun":Ljava/lang/String;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    sget-object v2, Lgnu/kawa/xml/XTimeType;->timeType:Lgnu/kawa/xml/XTimeType;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lgnu/kawa/xml/XTimeType;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    move-object v2, v1

    check-cast v2, Lgnu/math/DateTime;

    move-object v0, v2

    .line 38
    .end local v0    # "fun":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 37
    .restart local v0    # "fun":Ljava/lang/String;
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Lgnu/kawa/xml/KNode;

    if-nez v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Lgnu/kawa/xml/UntypedAtomic;

    if-eqz v2, :cond_2

    .line 38
    :cond_1
    move-object v2, v1

    invoke-static {v2}, Lgnu/xml/TextUtils;->stringValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x70

    invoke-static {v2, v3}, Lgnu/kawa/xml/XTimeType;->parseDateTime(Ljava/lang/String;I)Lgnu/math/DateTime;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 40
    :cond_2
    new-instance v2, Lgnu/mapping/WrongType;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x1

    move-object v6, v1

    const-string/jumbo v7, "xs:time"

    invoke-direct {v3, v4, v5, v6, v7}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/String;)V

    throw v2
.end method

.method public static currentDate()Lgnu/math/DateTime;
    .locals 2

    .prologue
    .line 341
    invoke-static {}, Lgnu/xquery/util/TimeUtils;->currentDateTime()Lgnu/math/DateTime;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lgnu/math/DateTime;->cast(I)Lgnu/math/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static currentDateTime()Lgnu/math/DateTime;
    .locals 3

    .prologue
    .line 322
    sget-object v1, Lgnu/xquery/util/TimeUtils;->currentDateTimeLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/math/DateTime;

    move-object v0, v1

    .line 323
    .local v0, "current":Lgnu/math/DateTime;
    move-object v1, v0

    if-nez v1, :cond_0

    .line 325
    invoke-static {}, Lgnu/xquery/util/TimeUtils;->now()Lgnu/math/DateTime;

    move-result-object v1

    move-object v0, v1

    .line 326
    sget-object v1, Lgnu/xquery/util/TimeUtils;->currentDateTimeLocal:Ljava/lang/ThreadLocal;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 336
    :cond_0
    move-object v1, v0

    move-object v0, v1

    .end local v0    # "current":Lgnu/math/DateTime;
    return-object v0
.end method

.method public static currentTime()Lgnu/math/DateTime;
    .locals 2

    .prologue
    .line 346
    invoke-static {}, Lgnu/xquery/util/TimeUtils;->currentDateTime()Lgnu/math/DateTime;

    move-result-object v0

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Lgnu/math/DateTime;->cast(I)Lgnu/math/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static dateTime(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .prologue
    .line 287
    move-object v0, p0

    .local v0, "arg1":Ljava/lang/Object;
    move-object v1, p1

    .local v1, "arg2":Ljava/lang/Object;
    move-object v9, v0

    if-eqz v9, :cond_0

    move-object v9, v0

    sget-object v10, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v9, v10, :cond_1

    :cond_0
    move-object v9, v0

    move-object v0, v9

    .line 305
    .end local v0    # "arg1":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 288
    .restart local v0    # "arg1":Ljava/lang/Object;
    :cond_1
    move-object v9, v1

    if-eqz v9, :cond_2

    move-object v9, v1

    sget-object v10, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v9, v10, :cond_3

    :cond_2
    move-object v9, v1

    move-object v0, v9

    goto :goto_0

    .line 289
    :cond_3
    const-string/jumbo v9, "dateTime"

    move-object v10, v0

    invoke-static {v9, v10}, Lgnu/xquery/util/TimeUtils;->coerceToDate(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v9

    move-object v2, v9

    .line 290
    .local v2, "date":Lgnu/math/DateTime;
    const-string/jumbo v9, "dateTime"

    move-object v10, v1

    invoke-static {v9, v10}, Lgnu/xquery/util/TimeUtils;->coerceToTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v9

    move-object v3, v9

    .line 291
    .local v3, "time":Lgnu/math/DateTime;
    new-instance v9, Ljava/lang/StringBuffer;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move-object v4, v9

    .line 292
    .local v4, "sbuf":Ljava/lang/StringBuffer;
    move-object v9, v2

    move-object v10, v4

    invoke-virtual {v9, v10}, Lgnu/math/DateTime;->toStringDate(Ljava/lang/StringBuffer;)V

    .line 293
    move-object v9, v4

    const/16 v10, 0x54

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    .line 294
    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v9, v10}, Lgnu/math/DateTime;->toStringTime(Ljava/lang/StringBuffer;)V

    .line 295
    move-object v9, v2

    invoke-virtual {v9}, Lgnu/math/DateTime;->isZoneUnspecified()Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v9, 0x1

    :goto_1
    move v5, v9

    .line 296
    .local v5, "hasZone1":Z
    move-object v9, v3

    invoke-virtual {v9}, Lgnu/math/DateTime;->isZoneUnspecified()Z

    move-result v9

    if-nez v9, :cond_6

    const/4 v9, 0x1

    :goto_2
    move v6, v9

    .line 297
    .local v6, "hasZone2":Z
    move v9, v5

    if-nez v9, :cond_4

    move v9, v6

    if-eqz v9, :cond_8

    .line 299
    :cond_4
    move-object v9, v2

    invoke-virtual {v9}, Lgnu/math/DateTime;->getZoneMinutes()I

    move-result v9

    move v7, v9

    .line 300
    .local v7, "zone1":I
    move-object v9, v3

    invoke-virtual {v9}, Lgnu/math/DateTime;->getZoneMinutes()I

    move-result v9

    move v8, v9

    .line 301
    .local v8, "zone2":I
    move v9, v5

    if-eqz v9, :cond_7

    move v9, v6

    if-eqz v9, :cond_7

    move v9, v7

    move v10, v8

    if-eq v9, v10, :cond_7

    .line 302
    new-instance v9, Ljava/lang/Error;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string/jumbo v11, "dateTime: incompatible timezone in arguments"

    invoke-direct {v10, v11}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v9

    .line 295
    .end local v5    # "hasZone1":Z
    .end local v6    # "hasZone2":Z
    .end local v7    # "zone1":I
    .end local v8    # "zone2":I
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 296
    .restart local v5    # "hasZone1":Z
    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 303
    .restart local v6    # "hasZone2":Z
    .restart local v7    # "zone1":I
    .restart local v8    # "zone2":I
    :cond_7
    move v9, v5

    if-eqz v9, :cond_9

    move v9, v7

    :goto_3
    move-object v10, v4

    invoke-static {v9, v10}, Lgnu/math/DateTime;->toStringZone(ILjava/lang/StringBuffer;)V

    .line 305
    .end local v7    # "zone1":I
    .end local v8    # "zone2":I
    :cond_8
    sget-object v9, Lgnu/kawa/xml/XTimeType;->dateTimeType:Lgnu/kawa/xml/XTimeType;

    move-object v10, v4

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lgnu/kawa/xml/XTimeType;->valueOf(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgnu/math/DateTime;

    move-object v0, v9

    goto/16 :goto_0

    .line 303
    .restart local v7    # "zone1":I
    .restart local v8    # "zone2":I
    :cond_9
    move v9, v8

    goto :goto_3
.end method

.method public static dayFromDate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, v0

    move-object v0, v1

    .line 129
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v1, "day-from-date"

    move-object v2, v0

    invoke-static {v1, v2}, Lgnu/xquery/util/TimeUtils;->coerceToDate(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/DateTime;->getDay()I

    move-result v1

    invoke-static {v1}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static dayFromDateTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, v0

    move-object v0, v1

    .line 77
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v1, "day-from-dateTime"

    move-object v2, v0

    invoke-static {v1, v2}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/DateTime;->getDay()I

    move-result v1

    invoke-static {v1}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static daysFromDuration(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, v0

    move-object v0, v1

    .line 177
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v1, "days-from-duration"

    move-object v2, v0

    invoke-static {v1, v2}, Lgnu/xquery/util/TimeUtils;->coerceToDuration(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/Duration;->getDays()I

    move-result v1

    invoke-static {v1}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static getImplicitTimezone()Lgnu/math/Duration;
    .locals 2

    .prologue
    .line 225
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    invoke-static {v0}, Lgnu/math/Duration;->makeMinutes(I)Lgnu/math/Duration;

    move-result-object v0

    return-object v0
.end method

.method static getSeconds(Lgnu/math/DateTime;)Ljava/lang/Number;
    .locals 11

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "date":Lgnu/math/DateTime;
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/math/DateTime;->getSecondsOnly()I

    move-result v4

    move v1, v4

    .line 95
    .local v1, "seconds":I
    move-object v4, v0

    invoke-virtual {v4}, Lgnu/math/DateTime;->getNanoSecondsOnly()I

    move-result v4

    int-to-long v4, v4

    move-wide v2, v4

    .line 96
    .local v2, "nanos":J
    move-wide v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 97
    move v4, v1

    invoke-static {v4}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v4

    move-object v0, v4

    .line 99
    .end local v0    # "date":Lgnu/math/DateTime;
    :goto_0
    return-object v0

    .line 98
    .restart local v0    # "date":Lgnu/math/DateTime;
    :cond_0
    move-wide v4, v2

    move v6, v1

    int-to-long v6, v6

    const-wide/32 v8, 0x3b9aca00

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    move-wide v2, v4

    .line 99
    new-instance v4, Ljava/math/BigDecimal;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-wide v6, v2

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    const/16 v7, 0x9

    invoke-direct {v5, v6, v7}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object v0, v4

    goto :goto_0
.end method

.method public static hoursFromDateTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, v0

    move-object v0, v1

    .line 83
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v1, "hours-from-dateTime"

    move-object v2, v0

    invoke-static {v1, v2}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/DateTime;->getHours()I

    move-result v1

    invoke-static {v1}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static hoursFromDuration(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, v0

    move-object v0, v1

    .line 183
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v1, "hours-from-duration"

    move-object v2, v0

    invoke-static {v1, v2}, Lgnu/xquery/util/TimeUtils;->coerceToDuration(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/Duration;->getHours()I

    move-result v1

    invoke-static {v1}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static hoursFromTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, v0

    move-object v0, v1

    .line 141
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v1, "hours-from-time"

    move-object v2, v0

    invoke-static {v1, v2}, Lgnu/xquery/util/TimeUtils;->coerceToTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/DateTime;->getHours()I

    move-result v1

    invoke-static {v1}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static implicitTimezone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 351
    invoke-static {}, Lgnu/xquery/util/TimeUtils;->currentDateTime()Lgnu/math/DateTime;

    move-result-object v0

    invoke-static {v0}, Lgnu/xquery/util/TimeUtils;->timeZoneFromXTime(Lgnu/math/DateTime;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static minutesFromDateTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, v0

    move-object v0, v1

    .line 89
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v1, "minutes-from-dateTime"

    move-object v2, v0

    invoke-static {v1, v2}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/DateTime;->getMinutes()I

    move-result v1

    invoke-static {v1}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static minutesFromDuration(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, v0

    move-object v0, v1

    .line 189
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v1, "minutes-from-duration"

    move-object v2, v0

    invoke-static {v1, v2}, Lgnu/xquery/util/TimeUtils;->coerceToDuration(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/Duration;->getMinutes()I

    move-result v1

    invoke-static {v1}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static minutesFromTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, v0

    move-object v0, v1

    .line 147
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v1, "minutes-from-time"

    move-object v2, v0

    invoke-static {v1, v2}, Lgnu/xquery/util/TimeUtils;->coerceToTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/DateTime;->getMinutes()I

    move-result v1

    invoke-static {v1}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static monthFromDate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, v0

    move-object v0, v1

    .line 123
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v1, "month-from-date"

    move-object v2, v0

    invoke-static {v1, v2}, Lgnu/xquery/util/TimeUtils;->coerceToDate(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/DateTime;->getMonth()I

    move-result v1

    invoke-static {v1}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static monthFromDateTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, v0

    move-object v0, v1

    .line 71
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v1, "month-from-dateTime"

    move-object v2, v0

    invoke-static {v1, v2}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/DateTime;->getMonth()I

    move-result v1

    invoke-static {v1}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static monthsFromDuration(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, v0

    move-object v0, v1

    .line 171
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v1, "months-from-duration"

    move-object v2, v0

    invoke-static {v1, v2}, Lgnu/xquery/util/TimeUtils;->coerceToDuration(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/Duration;->getMonths()I

    move-result v1

    invoke-static {v1}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static now()Lgnu/math/DateTime;
    .locals 1

    .prologue
    .line 282
    sget-object v0, Lgnu/kawa/xml/XTimeType;->dateTimeType:Lgnu/kawa/xml/XTimeType;

    invoke-virtual {v0}, Lgnu/kawa/xml/XTimeType;->now()Lgnu/math/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public static secondsBigDecimalFromDuration(JI)Ljava/math/BigDecimal;
    .locals 14

    .prologue
    .line 194
    move-wide v0, p0

    .local v0, "s":J
    move/from16 v2, p2

    .local v2, "n":I
    move v8, v2

    if-nez v8, :cond_0

    .line 195
    move-wide v8, v0

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v8

    move-object v0, v8

    .line 208
    .end local v0    # "s":J
    :goto_0
    return-object v0

    .line 196
    .restart local v0    # "s":J
    :cond_0
    const/16 v8, 0x9

    move v3, v8

    .line 198
    .local v3, "scale":I
    move-wide v8, v0

    long-to-int v8, v8

    int-to-long v8, v8

    move-wide v10, v0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    move v4, v8

    .line 199
    .local v4, "huge":Z
    move v8, v4

    if-eqz v8, :cond_2

    move v8, v2

    int-to-long v8, v8

    :goto_2
    move-wide v5, v8

    .line 200
    .local v5, "ns":J
    :goto_3
    move-wide v8, v5

    const-wide/16 v10, 0xa

    rem-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 202
    move-wide v8, v5

    const-wide/16 v10, 0xa

    div-long/2addr v8, v10

    move-wide v5, v8

    .line 203
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 198
    .end local v4    # "huge":Z
    .end local v5    # "ns":J
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 199
    .restart local v4    # "huge":Z
    :cond_2
    move-wide v8, v0

    const-wide/32 v10, 0x3b9aca00

    mul-long/2addr v8, v10

    move v10, v2

    int-to-long v10, v10

    add-long/2addr v8, v10

    goto :goto_2

    .line 205
    .restart local v5    # "ns":J
    :cond_3
    new-instance v8, Ljava/math/BigDecimal;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-wide v10, v5

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    move v11, v3

    invoke-direct {v9, v10, v11}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object v7, v8

    .line 206
    .local v7, "dec":Ljava/math/BigDecimal;
    move v8, v4

    if-eqz v8, :cond_4

    .line 207
    move-wide v8, v0

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v8

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v8

    move-object v7, v8

    .line 208
    :cond_4
    move-object v8, v7

    move-object v0, v8

    goto :goto_0
.end method

.method public static secondsFromDateTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, v0

    move-object v0, v1

    .line 105
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v1, "seconds-from-dateTime"

    move-object v2, v0

    invoke-static {v1, v2}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v1

    invoke-static {v1}, Lgnu/xquery/util/TimeUtils;->getSeconds(Lgnu/math/DateTime;)Ljava/lang/Number;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static secondsFromDuration(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v4, v0

    if-eqz v4, :cond_0

    move-object v4, v0

    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v4, v5, :cond_1

    :cond_0
    move-object v4, v0

    move-object v0, v4

    .line 220
    .end local v0    # "arg":Ljava/lang/Object;
    .local v1, "d":Lgnu/math/Duration;
    .local v2, "s":I
    .local v3, "n":I
    :goto_0
    return-object v0

    .line 214
    .end local v1    # "d":Lgnu/math/Duration;
    .end local v2    # "s":I
    .end local v3    # "n":I
    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v4, "seconds-from-duration"

    move-object v5, v0

    invoke-static {v4, v5}, Lgnu/xquery/util/TimeUtils;->coerceToDuration(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/Duration;

    move-result-object v4

    move-object v1, v4

    .line 215
    .restart local v1    # "d":Lgnu/math/Duration;
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/Duration;->getSecondsOnly()I

    move-result v4

    move v2, v4

    .line 216
    .restart local v2    # "s":I
    move-object v4, v1

    invoke-virtual {v4}, Lgnu/math/Duration;->getNanoSecondsOnly()I

    move-result v4

    move v3, v4

    .line 217
    .restart local v3    # "n":I
    move v4, v3

    if-nez v4, :cond_2

    .line 218
    move v4, v2

    invoke-static {v4}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 220
    :cond_2
    move v4, v2

    int-to-long v4, v4

    move v6, v3

    invoke-static {v4, v5, v6}, Lgnu/xquery/util/TimeUtils;->secondsBigDecimalFromDuration(JI)Ljava/math/BigDecimal;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public static secondsFromTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, v0

    move-object v0, v1

    .line 153
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v1, "seconds-from-time"

    move-object v2, v0

    invoke-static {v1, v2}, Lgnu/xquery/util/TimeUtils;->coerceToTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v1

    invoke-static {v1}, Lgnu/xquery/util/TimeUtils;->getSeconds(Lgnu/math/DateTime;)Ljava/lang/Number;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method static timeZoneFromXTime(Lgnu/math/DateTime;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "time":Lgnu/math/DateTime;
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/DateTime;->isZoneUnspecified()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    move-object v0, v1

    .line 54
    .end local v0    # "time":Lgnu/math/DateTime;
    :goto_0
    return-object v0

    .restart local v0    # "time":Lgnu/math/DateTime;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lgnu/math/DateTime;->getZoneMinutes()I

    move-result v1

    invoke-static {v1}, Lgnu/math/Duration;->makeMinutes(I)Lgnu/math/Duration;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static timezoneFromDate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, v0

    move-object v0, v1

    .line 135
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v1, "timezone-from-date"

    move-object v2, v0

    invoke-static {v1, v2}, Lgnu/xquery/util/TimeUtils;->coerceToDate(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v1

    invoke-static {v1}, Lgnu/xquery/util/TimeUtils;->timeZoneFromXTime(Lgnu/math/DateTime;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static timezoneFromDateTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, v0

    move-object v0, v1

    .line 111
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v1, "timezone-from-datetime"

    move-object v2, v0

    invoke-static {v1, v2}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v1

    invoke-static {v1}, Lgnu/xquery/util/TimeUtils;->timeZoneFromXTime(Lgnu/math/DateTime;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static timezoneFromTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, v0

    move-object v0, v1

    .line 159
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v1, "timezone-from-time"

    move-object v2, v0

    invoke-static {v1, v2}, Lgnu/xquery/util/TimeUtils;->coerceToTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v1

    invoke-static {v1}, Lgnu/xquery/util/TimeUtils;->timeZoneFromXTime(Lgnu/math/DateTime;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static yearFromDate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, v0

    move-object v0, v1

    .line 117
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v1, "year-from-date"

    move-object v2, v0

    invoke-static {v1, v2}, Lgnu/xquery/util/TimeUtils;->coerceToDate(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/DateTime;->getYear()I

    move-result v1

    invoke-static {v1}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static yearFromDateTime(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, v0

    move-object v0, v1

    .line 65
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v1, "year-from-dateTime"

    move-object v2, v0

    invoke-static {v1, v2}, Lgnu/xquery/util/TimeUtils;->coerceToDateTime(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/DateTime;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/DateTime;->getYear()I

    move-result v1

    invoke-static {v1}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static yearsFromDuration(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "arg":Ljava/lang/Object;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, v0

    move-object v0, v1

    .line 165
    .end local v0    # "arg":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "arg":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v1, "years-from-duration"

    move-object v2, v0

    invoke-static {v1, v2}, Lgnu/xquery/util/TimeUtils;->coerceToDuration(Ljava/lang/String;Ljava/lang/Object;)Lgnu/math/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/math/Duration;->getYears()I

    move-result v1

    invoke-static {v1}, Lgnu/xquery/util/TimeUtils;->asInteger(I)Lgnu/math/IntNum;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method
