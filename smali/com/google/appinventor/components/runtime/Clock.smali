.class public Lcom/google/appinventor/components/runtime/Clock;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/AlarmHandler;
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Non-visible component that provides the instant in time using the internal clock on the phone. It can fire a timer at regularly set intervals and perform time calculations, manipulations, and conversions.</p> <p>Methods to convert an instant to text are also available. Acceptable patterns are empty string, MM/DD/YYYY HH:mm:ss a, or MMM d, yyyyHH:mm. The empty string will provide the default format, which is \"MMM d, yyyy HH:mm:ss a\" for FormatDateTime \"MMM d, yyyy\" for FormatDate. To see all possible format, please see <a href=\"https://docs.oracle.com/javase/7/docs/api/java/text/SimpleDateFormat.html\" _target=\"_blank\">here</a>. </p> "
    iconName = "images/clock.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:Z

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

.field private n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 71
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 45
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/Clock;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:Z

    .line 46
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/Clock;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 9

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 45
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Clock;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:Z

    .line 46
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Clock;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:Z

    .line 55
    move-object v2, v0

    new-instance v3, Lcom/google/appinventor/components/runtime/util/TimerInternal;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    const/4 v6, 0x1

    const/16 v7, 0x3e8

    invoke-direct {v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/TimerInternal;-><init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZI)V

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/Clock;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    .line 58
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Clock;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 59
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Clock;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 60
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Clock;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 62
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Clock;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v2, v2, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v2, :cond_0

    .line 65
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Clock;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:Z

    .line 67
    :cond_0
    return-void
.end method

.method public static AddDays(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "An instant in time some days after the argument"
    .end annotation

    .prologue
    .line 356
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 357
    move-object v0, v3

    const/4 v3, 0x5

    move v4, v1

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAdd(Ljava/util/Calendar;II)V

    .line 358
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public static AddDuration(Ljava/util/Calendar;J)Ljava/util/Calendar;
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "An instant in time some duration after the argument"
    .end annotation

    .prologue
    .line 328
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Calendar;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 329
    move-object v0, v4

    move-wide v4, v1

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAddInMillis(Ljava/util/Calendar;J)V

    .line 330
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public static AddHours(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "An instant in time some hours after the argument"
    .end annotation

    .prologue
    .line 349
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 350
    move-object v0, v3

    const/16 v3, 0xb

    move v4, v1

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAdd(Ljava/util/Calendar;II)V

    .line 351
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public static AddMinutes(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "An instant in time some minutes after the argument"
    .end annotation

    .prologue
    .line 342
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 343
    move-object v0, v3

    const/16 v3, 0xc

    move v4, v1

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAdd(Ljava/util/Calendar;II)V

    .line 344
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public static AddMonths(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "An instant in time some months after the argument"
    .end annotation

    .prologue
    .line 370
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 371
    move-object v0, v3

    const/4 v3, 0x2

    move v4, v1

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAdd(Ljava/util/Calendar;II)V

    .line 372
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public static AddSeconds(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "An instant in time some seconds after the argument"
    .end annotation

    .prologue
    .line 335
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 336
    move-object v0, v3

    const/16 v3, 0xd

    move v4, v1

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAdd(Ljava/util/Calendar;II)V

    .line 337
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public static AddWeeks(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "An instant in time some weeks after the argument"
    .end annotation

    .prologue
    .line 363
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 364
    move-object v0, v3

    const/4 v3, 0x3

    move v4, v1

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAdd(Ljava/util/Calendar;II)V

    .line 365
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public static AddYears(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "An instant in time some years after the argument"
    .end annotation

    .prologue
    .line 377
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 378
    move-object v0, v3

    const/4 v3, 0x1

    move v4, v1

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAdd(Ljava/util/Calendar;II)V

    .line 379
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public static DayOfMonth(Ljava/util/Calendar;)I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The day of the month"
    .end annotation

    .prologue
    .line 490
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/Dates;->Day(Ljava/util/Calendar;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static Duration(Ljava/util/Calendar;Ljava/util/Calendar;)J
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Milliseconds elapsed between instants"
    .end annotation

    .prologue
    .line 391
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    move-wide v0, v2

    return-wide v0
.end method

.method public static DurationToDays(J)J
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "convert duration to days"
    .end annotation

    .prologue
    .line 435
    move-wide v0, p0

    move-wide v2, v0

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/Dates;->ConvertDuration(JI)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static DurationToHours(J)J
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "convert duration to hours"
    .end annotation

    .prologue
    .line 424
    move-wide v0, p0

    move-wide v2, v0

    const/16 v4, 0xb

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/Dates;->ConvertDuration(JI)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static DurationToMinutes(J)J
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "convert duration to minutes"
    .end annotation

    .prologue
    .line 413
    move-wide v0, p0

    move-wide v2, v0

    const/16 v4, 0xc

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/Dates;->ConvertDuration(JI)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static DurationToSeconds(J)J
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "convert duration to seconds"
    .end annotation

    .prologue
    .line 402
    move-wide v0, p0

    move-wide v2, v0

    const/16 v4, 0xd

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/Dates;->ConvertDuration(JI)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static DurationToWeeks(J)J
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "convert duration to weeks"
    .end annotation

    .prologue
    .line 446
    move-wide v0, p0

    move-wide v2, v0

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/Dates;->ConvertDuration(JI)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public static FormatDate(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Text representing the date of an instant in the specified pattern"
    .end annotation

    .prologue
    .line 580
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    :try_start_0
    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/Dates;->FormatDate(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    return-object v0

    .line 582
    :catch_0
    move-exception v2

    new-instance v2, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Illegal argument for pattern in Clock.FormatDate. Acceptable values are empty string, MM/dd/YYYY, or MMM d, yyyy. For all possible patterns, see https://docs.oracle.com/javase/7/docs/api/java/text/SimpleDateFormat.html"

    const-string/jumbo v5, "Sorry to be so picky."

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public static FormatDateTime(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Text representing the date and time of an instant in the specified pattern"
    .end annotation

    .prologue
    .line 561
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    :try_start_0
    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/Dates;->FormatDateTime(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    return-object v0

    .line 563
    :catch_0
    move-exception v2

    new-instance v2, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Illegal argument for pattern in Clock.FormatDateTime. Acceptable values are empty string, MM/dd/YYYY hh:mm:ss a, MMM d, yyyy HH:mm For all possible patterns, see https://docs.oracle.com/javase/7/docs/api/java/text/SimpleDateFormat.html"

    const-string/jumbo v5, "Sorry to be so picky."

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public static FormatTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Text representing the time of an instant"
    .end annotation

    .prologue
    .line 597
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/Dates;->FormatTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static GetMillis(Ljava/util/Calendar;)J
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The instant in time measured as milliseconds since 1970."
    .end annotation

    .prologue
    .line 323
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public static Hour(Ljava/util/Calendar;)I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The hour of the day"
    .end annotation

    .prologue
    .line 479
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/Dates;->Hour(Ljava/util/Calendar;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static MakeInstant(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "An instant in time specified by MM/dd/YYYY hh:mm:ss or MM/dd/YYYY or hh:mm"
    .end annotation

    .prologue
    .line 203
    move-object v0, p0

    move-object v1, v0

    :try_start_0
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/Dates;->DateValue(Ljava/lang/String;)Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v0, v1

    return-object v0

    .line 205
    :catch_0
    move-exception v1

    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string/jumbo v3, "Argument to MakeInstant should have form MM/dd/YYYY hh:mm:ss, or MM/dd/YYYY or hh:mm"

    const-string/jumbo v4, "Sorry to be so picky."

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public static MakeInstantFromMillis(J)Ljava/util/Calendar;
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "An instant in time specified by the milliseconds since 1970."
    .end annotation

    .prologue
    .line 310
    move-wide v0, p0

    invoke-static {}, Lcom/google/appinventor/components/runtime/util/Dates;->Now()Ljava/util/Calendar;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 311
    move-object v2, v4

    move-wide v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 312
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public static Minute(Ljava/util/Calendar;)I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The minute of the hour"
    .end annotation

    .prologue
    .line 468
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/Dates;->Minute(Ljava/util/Calendar;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static Month(Ljava/util/Calendar;)I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The month of the year represented as a number from 1 to 12)"
    .end annotation

    .prologue
    .line 525
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/Dates;->Month(Ljava/util/Calendar;)I

    move-result v1

    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    return v0
.end method

.method public static MonthName(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The name of the month"
    .end annotation

    .prologue
    .line 536
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/Dates;->MonthName(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static Now()Ljava/util/Calendar;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The current instant in time read from phone\'s clock"
    .end annotation

    .prologue
    .line 187
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/Dates;->Now()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static Second(Ljava/util/Calendar;)I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The second of the minute"
    .end annotation

    .prologue
    .line 457
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/Dates;->Second(Ljava/util/Calendar;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static SystemTime()J
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The phone\'s internal time"
    .end annotation

    .prologue
    .line 181
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/Dates;->Timer()J

    move-result-wide v0

    return-wide v0
.end method

.method public static Weekday(Ljava/util/Calendar;)I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The day of the week represented as a number from 1 (Sunday) to 7 (Saturday)"
    .end annotation

    .prologue
    .line 502
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/Dates;->Weekday(Ljava/util/Calendar;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static WeekdayName(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The name of the day of the week"
    .end annotation

    .prologue
    .line 513
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/Dates;->WeekdayName(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static Year(Ljava/util/Calendar;)I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The year"
    .end annotation

    .prologue
    .line 547
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/Dates;->Year(Ljava/util/Calendar;)I

    move-result v1

    move v0, v1

    return v0
.end method


# virtual methods
.method public MakeDate(III)Ljava/util/Calendar;
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Allows the user to set the clock to be a date value.\nValid values for the month field are 1-12 and 1-31 for the day field.\n"
    .end annotation

    .prologue
    .line 222
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    .line 224
    :try_start_0
    new-instance v5, Ljava/util/GregorianCalendar;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move v7, v1

    move v8, v4

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Ljava/util/GregorianCalendar;-><init>(III)V

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    .line 225
    move-object v4, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 229
    move-object v5, v4

    invoke-virtual {v5}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 232
    .line 234
    :goto_0
    move v5, v1

    move v6, v2

    move v7, v3

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/Dates;->DateInstant(III)Ljava/util/Calendar;

    move-result-object v5

    .line 235
    move-object v0, v5

    return-object v0

    .line 231
    :catch_0
    move-exception v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Clock;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v0

    const-string/jumbo v7, "MakeDate"

    const/16 v8, 0x961

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public MakeInstantFromParts(IIIIII)Ljava/util/Calendar;
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Allows the user to set the date and time to be displayed when the clock opens.\nValid values for the month field are 1-12 and 1-31 for the day field.\n"
    .end annotation

    .prologue
    .line 274
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v7, v8

    .line 277
    :try_start_0
    new-instance v8, Ljava/util/GregorianCalendar;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move v10, v1

    move v11, v7

    move v12, v3

    invoke-direct {v9, v10, v11, v12}, Ljava/util/GregorianCalendar;-><init>(III)V

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    .line 278
    move-object v7, v9

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->setLenient(Z)V

    .line 282
    move-object v8, v7

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 285
    .line 287
    :goto_0
    move v8, v1

    move v9, v2

    move v10, v3

    invoke-static {v8, v9, v10}, Lcom/google/appinventor/components/runtime/util/Dates;->DateInstant(III)Ljava/util/Calendar;

    move-result-object v8

    move-object v7, v8

    .line 290
    move-object v8, v7

    const/16 v9, 0xb

    move v10, v4

    :try_start_1
    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 291
    move-object v8, v7

    const/16 v9, 0xc

    move v10, v5

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V

    .line 292
    move-object v8, v7

    const/16 v9, 0xd

    move v10, v6

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->set(II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 296
    .line 298
    :goto_1
    move-object v8, v7

    move-object v0, v8

    return-object v0

    .line 284
    :catch_0
    move-exception v8

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/Clock;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v9, v0

    const-string/jumbo v10, "MakeInstantFromParts"

    const/16 v11, 0x961

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 295
    :catch_1
    move-exception v8

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/Clock;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v9, v0

    const-string/jumbo v10, "MakeInstantFromParts"

    const/16 v11, 0x961

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public MakeTime(III)Ljava/util/Calendar;
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Allows the user to set the time of the clock - Valid format is hh:mm:ss\n"
    .end annotation

    .prologue
    .line 248
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    new-instance v5, Ljava/util/GregorianCalendar;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/util/GregorianCalendar;-><init>()V

    move-object v4, v5

    .line 250
    move-object v5, v4

    const/16 v6, 0xb

    move v7, v1

    :try_start_0
    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 251
    move-object v5, v4

    const/16 v6, 0xc

    move v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->set(II)V

    .line 252
    move-object v5, v4

    const/16 v6, 0xd

    move v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->set(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .line 256
    :goto_0
    move-object v5, v4

    move-object v0, v5

    return-object v0

    .line 254
    :catch_0
    move-exception v5

    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/Clock;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v0

    const-string/jumbo v7, "MakeTime"

    const/16 v8, 0x961

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public Timer()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Timer has gone off."
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Clock;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/Clock;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:Z

    if-eqz v2, :cond_1

    .line 83
    :cond_0
    move-object v2, v0

    :try_start_0
    const-string/jumbo v3, "Timer"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 86
    .line 88
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 85
    const-string/jumbo v2, "Clock"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 88
    :cond_1
    goto :goto_0
.end method

.method public TimerAlwaysFires(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/Clock;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:Z

    .line 165
    return-void
.end method

.method public TimerAlwaysFires()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Will fire even when application is not showing on the screen if true"
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/Clock;->BG2b8dRaEUNcWY5vxXAWfSqyg8ZvS4tysLlCvHPUDp1bRFO56FHQ3a9NvDEKgkS:Z

    move v0, v1

    return v0
.end method

.method public TimerEnabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Clock;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    .line 139
    return-void
.end method

.method public TimerEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Fires timer if true"
    .end annotation

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Clock;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public TimerInterval()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Interval between timer events in ms"
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Clock;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Interval()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public TimerInterval(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1000"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 112
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/Clock;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Interval(I)V

    .line 113
    return-void
.end method

.method public alarm()V
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Clock;->Timer()V

    .line 172
    return-void
.end method

.method public onDelete()V
    .locals 3

    .prologue
    .line 619
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Clock;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    if-eqz v1, :cond_0

    .line 620
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Clock;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    .line 622
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 612
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Clock;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    if-eqz v1, :cond_0

    .line 613
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/Clock;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    .line 615
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 607
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/Clock;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:Z

    .line 608
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 602
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/appinventor/components/runtime/Clock;->n86Bi3TT8lkq4OIAY6TQzz40yEQcROLeML3EOzGKfDOtlcMXWXcB7P2XOFzT0DDv:Z

    .line 603
    return-void
.end method
