.class public Lcom/google/appinventor/components/runtime/SQLite;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->STORAGE:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Tool developed by Carlos Pedroza to access the application\'s SQlite database."
    helpUrl = "https://docs.kodular.io/components/storage/sqlite/"
    iconName = "images/SQLite.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/SQLite$a;,
        Lcom/google/appinventor/components/runtime/SQLite$c;,
        Lcom/google/appinventor/components/runtime/SQLite$b;
    }
.end annotation


# static fields
.field private static BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:Ljava/lang/String;


# instance fields
.field private F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:[Ljava/lang/String;

.field private LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:[Ljava/lang/String;

.field private RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:Z

.field private ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:Z

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private gmm7XQFeiJoCy8yWhIBdyNlesqTvuP4UyGLNuJ8TYBJTJ249gDjP9OHTkIprzI7:Z

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/database/sqlite/SQLiteDatabase;

.field private q8iygSjgpTZ52A5K8GXhnvUs2CX4iXd4uIVtwvououVquIzlzfVOfWIR3CjSHG4:I

.field private rt5vY3dr7aqqLpGGqZnuBZtCcoybaeOtN6eJM7wVAxcn7hidZNH6rGtSnPCIECFs:Ljava/lang/String;

.field private symWhrqAyHWXMObHLoQEIMlJvqdZFvcp7UyC2VmDxP3CgSs0pkdkxz6qiaDBzrEK:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string/jumbo v0, "DATABASE.sqlite"

    sput-object v0, Lcom/google/appinventor/components/runtime/SQLite;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 4

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 46
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lcom/google/appinventor/components/runtime/SQLite;->symWhrqAyHWXMObHLoQEIMlJvqdZFvcp7UyC2VmDxP3CgSs0pkdkxz6qiaDBzrEK:I

    .line 55
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/appinventor/components/runtime/SQLite;->q8iygSjgpTZ52A5K8GXhnvUs2CX4iXd4uIVtwvououVquIzlzfVOfWIR3CjSHG4:I

    .line 188
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/SQLite;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 189
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/SQLite;->context:Landroid/content/Context;

    .line 190
    const-string/jumbo v2, "SQLite"

    const-string/jumbo v3, "SQLite created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 191
    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/appinventor/components/runtime/SQLite;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/SQLite;)Z
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/SQLite;->RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:Z

    move v0, v1

    return v0
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/SQLite;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/SQLite;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:[Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SQLite;)I
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/SQLite;->symWhrqAyHWXMObHLoQEIMlJvqdZFvcp7UyC2VmDxP3CgSs0pkdkxz6qiaDBzrEK:I

    move v0, v1

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SQLite;I)I
    .locals 7

    .prologue
    .line 37
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lcom/google/appinventor/components/runtime/SQLite;->q8iygSjgpTZ52A5K8GXhnvUs2CX4iXd4uIVtwvououVquIzlzfVOfWIR3CjSHG4:I

    move v0, v2

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SQLite;)Landroid/content/Context;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/SQLite;->context:Landroid/content/Context;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SQLite;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/SQLite;->rt5vY3dr7aqqLpGGqZnuBZtCcoybaeOtN6eJM7wVAxcn7hidZNH6rGtSnPCIECFs:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/database/Cursor;)Ljava/util/List;
    .locals 10

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, p1

    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v6

    .line 143
    move-object v6, v1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v6

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    .line 145
    move-object v2, v7

    array-length v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_4

    .line 146
    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v6

    .line 147
    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/appinventor/components/runtime/SQLite;->gmm7XQFeiJoCy8yWhIBdyNlesqTvuP4UyGLNuJ8TYBJTJ249gDjP9OHTkIprzI7:Z

    if-eqz v6, :cond_1

    .line 148
    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v6

    .line 149
    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move-object v7, v2

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 150
    move-object v6, v4

    move-object v7, v2

    move v8, v5

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 149
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 152
    :cond_0
    move-object v6, v3

    move-object v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 155
    :cond_1
    :goto_1
    move-object v6, v1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 156
    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v6

    .line 157
    const/4 v6, 0x0

    move v5, v6

    :goto_2
    move v6, v5

    move-object v7, v2

    array-length v7, v7

    if-ge v6, v7, :cond_2

    .line 158
    move-object v6, v4

    move-object v7, v1

    move v8, v5

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 157
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 160
    :cond_2
    move-object v6, v3

    move-object v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 161
    goto :goto_1

    .line 163
    :cond_3
    move-object v6, v1

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 164
    .line 179
    :goto_3
    move-object v6, v3

    move-object v0, v6

    .line 182
    :goto_4
    return-object v0

    .line 163
    :catchall_0
    move-exception v6

    move-object v2, v6

    move-object v6, v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 164
    move-object v6, v2

    throw v6
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 181
    :catch_0
    move-exception v6

    move-object v6, v0

    const-string/jumbo v7, "Error during managing the cursor"

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/SQLite;->ErrorOccurred(Ljava/lang/String;)V

    .line 182
    move-object v6, v3

    move-object v0, v6

    goto :goto_4

    .line 167
    :cond_4
    :try_start_3
    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v6

    .line 168
    move-object v6, v0

    iget-boolean v6, v6, Lcom/google/appinventor/components/runtime/SQLite;->gmm7XQFeiJoCy8yWhIBdyNlesqTvuP4UyGLNuJ8TYBJTJ249gDjP9OHTkIprzI7:Z

    if-eqz v6, :cond_5

    .line 169
    move-object v6, v3

    move-object v7, v2

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v6

    .line 172
    :cond_5
    :goto_5
    move-object v6, v1

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 173
    move-object v6, v3

    move-object v7, v1

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v6

    goto :goto_5

    .line 176
    :cond_6
    move-object v6, v1

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 177
    goto :goto_3

    .line 176
    :catchall_1
    move-exception v6

    move-object v2, v6

    move-object v6, v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 177
    move-object v6, v2

    throw v6
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SQLite;Landroid/database/Cursor;)Ljava/util/List;
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/SQLite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SQLite;)Z
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/SQLite;->ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:Z

    move v0, v1

    return v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SQLite;)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/SQLite;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:[Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public static toCsvRow([Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    .line 561
    move-object v0, p0

    const-string/jumbo v6, ","

    move-object v1, v6

    .line 562
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v6

    .line 563
    move-object v6, v0

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v0

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 564
    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 563
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 566
    :cond_0
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    .line 567
    move-object v0, v7

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 568
    move-object v6, v0

    const/4 v7, 0x0

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 570
    :cond_1
    move-object v6, v0

    move-object v0, v6

    return-object v0
.end method


# virtual methods
.method public AfterExecution(Z)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 289
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "AfterExecution"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 290
    return-void
.end method

.method public AfterQuery(Ljava/util/List;I)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 315
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    const-string/jumbo v4, "AfterQuery"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    .line 316
    return-void
.end method

.method public ClearDatabase()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clears the database to version 1. Use only while developing, this shouldn\'t be use on production."
    .end annotation

    .prologue
    .line 246
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/SQLite;->context:Landroid/content/Context;

    sget-object v2, Lcom/google/appinventor/components/runtime/SQLite;->BeAOotgA7zBP9Op6r2FqJlUCXvxuSHPx6BwhNdpgtXlIG2LNe5NWKzZhiJoW0gYE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v1

    .line 247
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/SQLite;->context:Landroid/content/Context;

    const-string/jumbo v2, "Database cleared"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 248
    return-void
.end method

.method public Delete(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)I
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Executes pre-compiled DELETE statement with specified parameters. Parameters: 1) String table - Name of the table. 2) String whereClause - Optional WHERE clause to apply when deleting (Example: \'ID = ?\'), pasing an empty a string will delete all rows. 3) List whereArgs - List with arguments for the WHERE clause. These arguments will be replaced by \'?\' in the whereClause. Returns the number of rows affected if a whereClause is passed in, 0 otherwise."
    .end annotation

    .prologue
    .line 332
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    :try_start_0
    new-instance v5, Lcom/google/appinventor/components/runtime/SQLite$a;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/google/appinventor/components/runtime/SQLite$a;-><init>(Lcom/google/appinventor/components/runtime/SQLite;)V

    .line 333
    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/SQLite$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    move-object v4, v5

    .line 334
    move-object v5, v3

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 335
    move-object v5, v2

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v2, v5

    .line 337
    move-object v5, v4

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    move v1, v5

    .line 338
    move-object v5, v4

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    move v5, v1

    move v0, v5

    .line 342
    :goto_1
    return v0

    .line 335
    :cond_0
    move-object v5, v2

    goto :goto_0

    .line 341
    :catch_0
    move-exception v5

    move-object v5, v0

    const-string/jumbo v6, "Something went wrong deleting"

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/SQLite;->ErrorOccurred(Ljava/lang/String;)V

    .line 342
    const/4 v5, -0x1

    move v0, v5

    goto :goto_1
.end method

.method public DisplayTables()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Used to retrieve list of existing tables from the database"
        userVisible = true
    .end annotation

    .prologue
    .line 554
    move-object v0, p0

    new-instance v3, Lcom/google/appinventor/components/runtime/SQLite$a;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/SQLite$a;-><init>(Lcom/google/appinventor/components/runtime/SQLite;)V

    move-object v1, v3

    .line 556
    const-string/jumbo v3, "SELECT tbl_name FROM sqlite_master WHERE type=\'table\' and tbl_name != \'android_metadata\'"

    move-object v2, v3

    .line 557
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/SQLite$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SQLite$a;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public DropTable(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Used to drop / delete table from database. Please note that this event will DELETE any data you may have on the table and will then delete table from the database. After this operation is completed, it cannot be undone!"
        userVisible = true
    .end annotation

    .prologue
    .line 535
    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "drop table if exists "

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 536
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/SQLite;->RunQuery(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public ErrorOccurred(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 512
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "ErrorOccurred"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    .line 513
    return-void
.end method

.method public GetPath()Ljava/lang/String;
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the path to the database"
    .end annotation

    .prologue
    .line 235
    move-object v0, p0

    new-instance v2, Lcom/google/appinventor/components/runtime/SQLite$a;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/SQLite$a;-><init>(Lcom/google/appinventor/components/runtime/SQLite;)V

    move-object v1, v2

    .line 236
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/SQLite$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/SQLite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/database/sqlite/SQLiteDatabase;

    .line 237
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SQLite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public Insert(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)J
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Executes pre-compiled INSERT statement with specified parameters. Parameters: 1) String table - Name of the table. 2) YailList columns - List with the columns that will contain the data to be inserted in the database. 3) YailList values - List with the data to be inserted in the database. Returns the row ID of the newly inserted row, or -1 if an error occurred."
    .end annotation

    .prologue
    .line 360
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    :try_start_0
    new-instance v8, Lcom/google/appinventor/components/runtime/SQLite$a;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    invoke-direct {v9, v10}, Lcom/google/appinventor/components/runtime/SQLite$a;-><init>(Lcom/google/appinventor/components/runtime/SQLite;)V

    .line 361
    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/SQLite$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    move-object v4, v8

    .line 363
    move-object v8, v2

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 364
    move-object v8, v3

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 365
    new-instance v8, Landroid/content/ContentValues;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    move-object v5, v8

    .line 366
    const/4 v8, 0x0

    move v6, v8

    :goto_0
    move v8, v6

    move-object v9, v2

    array-length v9, v9

    if-ge v8, v9, :cond_0

    .line 367
    move-object v8, v5

    move-object v9, v2

    move v10, v6

    aget-object v9, v9, v10

    move-object v10, v3

    move v11, v6

    aget-object v10, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 369
    :cond_0
    move-object v8, v4

    move-object v9, v1

    const/4 v10, 0x0

    move-object v11, v5

    invoke-virtual {v8, v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    move-wide v6, v8

    .line 370
    move-object v8, v4

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    move-wide v8, v6

    move-wide v0, v8

    .line 374
    :goto_1
    return-wide v0

    .line 373
    :catch_0
    move-exception v8

    move-object v8, v0

    const-string/jumbo v9, "Something went wrong inserting"

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/SQLite;->ErrorOccurred(Ljava/lang/String;)V

    .line 374
    const-wide/16 v8, -0x1

    move-wide v0, v8

    goto :goto_1
.end method

.method public MultipleSQL(Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Execute Multiple SQL Statement asynchronously and returns whether the transaction was successful in the AfterExecution Event Handler. Use it when returned data isn\'t needed. Parameter: 1 ) List of SQL."
    .end annotation

    .prologue
    .line 276
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/SQLite;->F0SK4gPRNmAI2jCyU6DpJpRxlfo5Y8j9ZujjeLuDeDzReJBeSNN2RZtCnkXv1dho:[Ljava/lang/String;

    .line 277
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/SQLite;->ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:Z

    .line 278
    new-instance v2, Lcom/google/appinventor/components/runtime/SQLite$b;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/SQLite$b;-><init>(Lcom/google/appinventor/components/runtime/SQLite;B)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/SQLite$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 281
    .line 282
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v2

    move-object v2, v0

    const-string/jumbo v3, "Something went wrong MultipleSQL"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/SQLite;->ErrorOccurred(Ljava/lang/String;)V

    .line 282
    goto :goto_0
.end method

.method public Query(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Executes pre-compiled QUERY statement with specified parameters. Parameters: 1) String table: Name of the table. 2) YailList columns: List of which columns to return, passing an empty list will return all columns. 3) String selection: Filter declaring which rows to return, formatted as an SQL WHERE clause, passing an empty string will return all rows. 4) YailList selectionArgs: List with the arguments that will replace onto \'?\' in the selection filter. 5) String groupBy: A filter declaring how to group rows, formatted as an SQL GROUP BY clause (excluding the GROUP BY itself), passing an empty string will cause the row to not be grouped. 6) String having: A filter declare which row groups to include if row grouping is being used, passing an empty string will cause all row groups to be included. 7) String orderBy: How to order the rows, formatted as an SQL ORDER BY clause (excluding the ORDER BY itself), passing an empty string will use the default sort order (unordered). 8) String limit: Limits the number of rows returned by the query, formatted as LIMIT clause, passing an empty string denotes no LIMIT clause. The result query is available in the AfterQuery event handler"
    .end annotation

    .prologue
    .line 471
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    new-instance v12, Lcom/google/appinventor/components/runtime/SQLite$a;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    move-object v14, v0

    invoke-direct {v13, v14}, Lcom/google/appinventor/components/runtime/SQLite$a;-><init>(Lcom/google/appinventor/components/runtime/SQLite;)V

    .line 472
    invoke-virtual {v12}, Lcom/google/appinventor/components/runtime/SQLite$a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    move-object v9, v12

    .line 473
    move-object v12, v2

    invoke-virtual {v12}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v12

    move-object v2, v12

    .line 474
    move-object v12, v4

    invoke-virtual {v12}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v12

    move-object v4, v12

    .line 476
    move-object v12, v3

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x0

    :goto_0
    move-object v3, v12

    .line 477
    move-object v12, v5

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x0

    :goto_1
    move-object v5, v12

    .line 478
    move-object v12, v6

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x0

    :goto_2
    move-object v6, v12

    .line 479
    move-object v12, v7

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v12, 0x0

    :goto_3
    move-object v7, v12

    .line 480
    move-object v12, v8

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x0

    :goto_4
    move-object v8, v12

    .line 482
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v12

    .line 483
    const/4 v12, 0x0

    move v11, v12

    .line 485
    move-object v12, v9

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 487
    move-object v12, v9

    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    :try_start_0
    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    move-object v1, v12

    .line 488
    move-object v12, v0

    move-object v13, v1

    invoke-direct {v12, v13}, Lcom/google/appinventor/components/runtime/SQLite;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v12

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    .line 489
    move-object v10, v13

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    move v11, v12

    .line 490
    const/4 v12, 0x1

    move v1, v12

    .line 491
    move-object v12, v9

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    move-object v12, v9

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 496
    .line 497
    :goto_5
    move-object v12, v9

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 499
    move-object v12, v0

    iget-boolean v12, v12, Lcom/google/appinventor/components/runtime/SQLite;->RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:Z

    if-nez v12, :cond_0

    move-object v12, v0

    iget-object v12, v12, Lcom/google/appinventor/components/runtime/SQLite;->context:Landroid/content/Context;

    const-string/jumbo v13, "Done"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 500
    :cond_0
    move v12, v1

    if-eqz v12, :cond_6

    .line 501
    move-object v12, v0

    move-object v13, v10

    move v14, v11

    invoke-virtual {v12, v13, v14}, Lcom/google/appinventor/components/runtime/SQLite;->AfterQuery(Ljava/util/List;I)V

    .line 505
    :goto_6
    return-void

    .line 476
    :cond_1
    move-object v12, v3

    goto/16 :goto_0

    .line 477
    :cond_2
    move-object v12, v5

    goto/16 :goto_1

    .line 478
    :cond_3
    move-object v12, v6

    goto/16 :goto_2

    .line 479
    :cond_4
    move-object v12, v7

    goto :goto_3

    .line 480
    :cond_5
    move-object v12, v8

    goto :goto_4

    .line 493
    :catch_0
    move-exception v12

    const/4 v12, 0x0

    move v1, v12

    .line 495
    move-object v12, v9

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 496
    goto :goto_5

    .line 495
    :catchall_0
    move-exception v12

    move-object v1, v12

    move-object v12, v9

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 496
    move-object v12, v1

    throw v12

    .line 503
    :cond_6
    move-object v12, v0

    const-string/jumbo v13, "Something went wrong querying"

    invoke-virtual {v12, v13}, Lcom/google/appinventor/components/runtime/SQLite;->ErrorOccurred(Ljava/lang/String;)V

    .line 505
    goto :goto_6
.end method

.method public RawQuery(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Executes the provided rawQuery Statement asynchronously. Returns a YailList with the selected data and number of records in the AfterQuery Event. Parameter: 1) String sql. 2) YailList selectionArgs: List with the arguments that will replace \'?\' in where clause in the query, to prevent SQL injections"
    .end annotation

    .prologue
    .line 302
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v2

    :try_start_0
    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/SQLite;->LYVRHQlR5uMq9RmVQLgPQwQp4HVKuBDt7Jnpu0jTztYClgnk53NSpkUmjjPPbYn:[Ljava/lang/String;

    .line 303
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/SQLite;->rt5vY3dr7aqqLpGGqZnuBZtCcoybaeOtN6eJM7wVAxcn7hidZNH6rGtSnPCIECFs:Ljava/lang/String;

    .line 304
    new-instance v3, Lcom/google/appinventor/components/runtime/SQLite$c;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/google/appinventor/components/runtime/SQLite$c;-><init>(Lcom/google/appinventor/components/runtime/SQLite;B)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/SQLite$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 307
    .line 308
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v3

    move-object v3, v0

    const-string/jumbo v4, "Something went wrong RawQuery"

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/SQLite;->ErrorOccurred(Ljava/lang/String;)V

    .line 308
    goto :goto_0
.end method

.method public Replace(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;)J
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Executes pre-compiled REPLACE OR INSERT INTO statement with specified parameters. Parameters: 1) String table - Name of the table. 2) YailList columns - List with the columns that will contain the data to be replaced in the database. 3) YailList values - List with the data to be replaced in the database. Returns the row ID of the newly replaced row, or -1 if an error occurred."
    .end annotation

    .prologue
    .line 392
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    :try_start_0
    new-instance v8, Lcom/google/appinventor/components/runtime/SQLite$a;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    invoke-direct {v9, v10}, Lcom/google/appinventor/components/runtime/SQLite$a;-><init>(Lcom/google/appinventor/components/runtime/SQLite;)V

    .line 393
    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/SQLite$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    move-object v4, v8

    .line 395
    move-object v8, v2

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 396
    move-object v8, v3

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 397
    new-instance v8, Landroid/content/ContentValues;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    move-object v5, v8

    .line 398
    const/4 v8, 0x0

    move v6, v8

    :goto_0
    move v8, v6

    move-object v9, v2

    array-length v9, v9

    if-ge v8, v9, :cond_0

    .line 399
    move-object v8, v5

    move-object v9, v2

    move v10, v6

    aget-object v9, v9, v10

    move-object v10, v3

    move v11, v6

    aget-object v10, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 401
    :cond_0
    move-object v8, v4

    move-object v9, v1

    const/4 v10, 0x0

    move-object v11, v5

    invoke-virtual {v8, v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    move-wide v6, v8

    .line 402
    move-object v8, v4

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    move-wide v8, v6

    move-wide v0, v8

    .line 406
    :goto_1
    return-wide v0

    .line 405
    :catch_0
    move-exception v8

    move-object v8, v0

    const-string/jumbo v9, "Something went wrong replacing"

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/SQLite;->ErrorOccurred(Ljava/lang/String;)V

    .line 406
    const-wide/16 v8, -0x1

    move-wide v0, v8

    goto :goto_1
.end method

.method public ReturnHeader(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "false"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 208
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/SQLite;->gmm7XQFeiJoCy8yWhIBdyNlesqTvuP4UyGLNuJ8TYBJTJ249gDjP9OHTkIprzI7:Z

    .line 209
    return-void
.end method

.method public ReturnHeader()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns whether the header row should be returned in the result of a Select statement."
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/SQLite;->gmm7XQFeiJoCy8yWhIBdyNlesqTvuP4UyGLNuJ8TYBJTJ249gDjP9OHTkIprzI7:Z

    move v0, v1

    return v0
.end method

.method public RowsAffected()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the number of rows affected after a raw SQL has been executed using SQL Query."
    .end annotation

    .prologue
    .line 549
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/SQLite;->q8iygSjgpTZ52A5K8GXhnvUs2CX4iXd4uIVtwvououVquIzlzfVOfWIR3CjSHG4:I

    move v0, v1

    return v0
.end method

.method public RunQuery(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Used to run any valid SQLite query and return results in same block."
        userVisible = true
    .end annotation

    .prologue
    .line 518
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Lcom/google/appinventor/components/runtime/SQLite$a;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/SQLite$a;-><init>(Lcom/google/appinventor/components/runtime/SQLite;)V

    move-object v2, v3

    .line 519
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    .line 521
    move-object v1, v4

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "select"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "explain"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 523
    :cond_0
    move-object v3, v2

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/SQLite$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SQLite$a;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    move-object v1, v3

    .line 528
    :goto_0
    move-object v3, v1

    move-object v0, v3

    return-object v0

    .line 526
    :cond_1
    move-object v3, v2

    move-object v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/SQLite$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/SQLite$a;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v3

    move-object v1, v3

    goto :goto_0
.end method

.method public SingleSQL(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Execute a Single SQL Statement asynchronously and returns whether the transaction was successful in the AfterExecution Event Handler. Use it when returned data isn\'t needed. Parameter: 1) String sql."
    .end annotation

    .prologue
    .line 259
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    :try_start_0
    iput-object v3, v2, Lcom/google/appinventor/components/runtime/SQLite;->rt5vY3dr7aqqLpGGqZnuBZtCcoybaeOtN6eJM7wVAxcn7hidZNH6rGtSnPCIECFs:Ljava/lang/String;

    .line 260
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/SQLite;->ZX8R20flhr3CVS4Kl4ZKKDInmXhpC5acCzOjP50MC4PLZvr5DSKJA1uCSNI4PeI:Z

    .line 261
    new-instance v2, Lcom/google/appinventor/components/runtime/SQLite$b;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/SQLite$b;-><init>(Lcom/google/appinventor/components/runtime/SQLite;B)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/SQLite$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 264
    .line 265
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v2

    move-object v2, v0

    const-string/jumbo v3, "Something went wrong SingleSQL"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/SQLite;->ErrorOccurred(Ljava/lang/String;)V

    .line 265
    goto :goto_0
.end method

.method public SuppressToast(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "false"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 227
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/SQLite;->RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:Z

    .line 228
    return-void
.end method

.method public SuppressToast()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns whether Success Toast should be suppressed."
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/SQLite;->RbYVQzNQ0N2UrAmoggkhMTlc54LPYDcOUMcpFAK7czpNLpbMtrjfrFIT6QATuiqT:Z

    move v0, v1

    return v0
.end method

.method public Update(Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;Lcom/google/appinventor/components/runtime/util/YailList;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/YailList;)I
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Executes pre-compiled UPDATE statement with specified parameters. Parameters: 1) String table - Name of the table. 2) YailList columns - List with the columns that will contain the data to be inserted in the database. 3) YailList values - List with the data to be inserted in the database. 4) String whereClause - optional WHERE clause to apply when updating, leave an empty string to update all rows. Include ?s, which will be updated by the values from whereArgs. 5) YailList whereArgs - List with the columns that will contain the data to be updated in the database. Returns the row ID of the newly inserted row, or -1 if an error occurred."
    .end annotation

    .prologue
    .line 428
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    :try_start_0
    new-instance v9, Lcom/google/appinventor/components/runtime/SQLite$a;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v0

    invoke-direct {v10, v11}, Lcom/google/appinventor/components/runtime/SQLite$a;-><init>(Lcom/google/appinventor/components/runtime/SQLite;)V

    .line 429
    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/SQLite$a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    move-object v6, v9

    .line 430
    move-object v9, v2

    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v9

    move-object v2, v9

    .line 431
    move-object v9, v3

    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 432
    new-instance v9, Landroid/content/ContentValues;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    move-object v7, v9

    .line 435
    const/4 v9, 0x0

    move v8, v9

    :goto_0
    move v9, v8

    move-object v10, v2

    array-length v10, v10

    if-ge v9, v10, :cond_0

    .line 436
    move-object v9, v7

    move-object v10, v2

    move v11, v8

    aget-object v10, v10, v11

    move-object v11, v3

    move v12, v8

    aget-object v11, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 438
    :cond_0
    move-object v9, v5

    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/util/YailList;->toStringArray()[Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 439
    move-object v9, v4

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x0

    :goto_1
    move-object v4, v9

    .line 440
    move-object v9, v6

    move-object v10, v1

    move-object v11, v7

    move-object v12, v4

    move-object v13, v8

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    move v1, v9

    .line 441
    move-object v9, v6

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    move v9, v1

    move v0, v9

    .line 445
    :goto_2
    return v0

    .line 439
    :cond_1
    move-object v9, v4

    goto :goto_1

    .line 444
    :catch_0
    move-exception v9

    move-object v9, v0

    const-string/jumbo v10, "Something went wrong updating"

    invoke-virtual {v9, v10}, Lcom/google/appinventor/components/runtime/SQLite;->ErrorOccurred(Ljava/lang/String;)V

    .line 445
    const/4 v9, -0x1

    move v0, v9

    goto :goto_2
.end method
