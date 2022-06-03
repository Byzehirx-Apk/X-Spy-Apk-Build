.class final Lcom/google/appinventor/components/runtime/EventDispatcher$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Ljava/lang/String;

.field final vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 29
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/EventDispatcher$a;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:Ljava/lang/String;

    .line 30
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/EventDispatcher$a;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Ljava/lang/String;

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 7

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/EventDispatcher$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    .line 36
    const/4 v2, 0x1

    move v0, v2

    .line 51
    :goto_0
    return v0

    .line 38
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 39
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 42
    :cond_2
    move-object v2, v1

    check-cast v2, Lcom/google/appinventor/components/runtime/EventDispatcher$a;

    move-object v1, v2

    .line 44
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/EventDispatcher$a;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:Ljava/lang/String;

    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/EventDispatcher$a;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 45
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 47
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/EventDispatcher$a;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Ljava/lang/String;

    move-object v3, v1

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/EventDispatcher$a;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 48
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 51
    :cond_4
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 56
    move-object v0, p0

    const/16 v1, 0x1f

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/EventDispatcher$a;->PJTNEFub7t830GnsJOreZR2G4QGerhYk5JzZTaNM1rn2OjCmiPf1GPWMoDtnF4UY:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int/2addr v1, v2

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/EventDispatcher$a;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    move v0, v1

    return v0
.end method
