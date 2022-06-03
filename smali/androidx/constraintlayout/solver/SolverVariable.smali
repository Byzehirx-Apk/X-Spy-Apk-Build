.class public Landroidx/constraintlayout/solver/SolverVariable;
.super Ljava/lang/Object;
.source "SolverVariable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/SolverVariable$Type;
    }
.end annotation


# static fields
.field private static final INTERNAL_DEBUG:Z = false

.field static final MAX_STRENGTH:I = 0x7

.field public static final STRENGTH_BARRIER:I = 0x7

.field public static final STRENGTH_EQUALITY:I = 0x5

.field public static final STRENGTH_FIXED:I = 0x6

.field public static final STRENGTH_HIGH:I = 0x3

.field public static final STRENGTH_HIGHEST:I = 0x4

.field public static final STRENGTH_LOW:I = 0x1

.field public static final STRENGTH_MEDIUM:I = 0x2

.field public static final STRENGTH_NONE:I

.field private static uniqueConstantId:I

.field private static uniqueErrorId:I

.field private static uniqueId:I

.field private static uniqueSlackId:I

.field private static uniqueUnrestrictedId:I


# instance fields
.field public computedValue:F

.field definitionId:I

.field public id:I

.field mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

.field mClientEquationsCount:I

.field private mName:Ljava/lang/String;

.field mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

.field public strength:I

.field strengthVector:[F

.field public usageInRowCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x1

    sput v0, Landroidx/constraintlayout/solver/SolverVariable;->uniqueSlackId:I

    .line 42
    const/4 v0, 0x1

    sput v0, Landroidx/constraintlayout/solver/SolverVariable;->uniqueErrorId:I

    .line 43
    const/4 v0, 0x1

    sput v0, Landroidx/constraintlayout/solver/SolverVariable;->uniqueUnrestrictedId:I

    .line 44
    const/4 v0, 0x1

    sput v0, Landroidx/constraintlayout/solver/SolverVariable;->uniqueConstantId:I

    .line 45
    const/4 v0, 0x1

    sput v0, Landroidx/constraintlayout/solver/SolverVariable;->uniqueId:I

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v1, p1

    .local v1, "type":Landroidx/constraintlayout/solver/SolverVariable$Type;
    move-object v2, p2

    .local v2, "prefix":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 50
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 51
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 55
    move-object v3, v0

    const/4 v4, 0x7

    new-array v4, v4, [F

    iput-object v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->strengthVector:[F

    .line 58
    move-object v3, v0

    const/16 v4, 0x8

    new-array v4, v4, [Landroidx/constraintlayout/solver/ArrayRow;

    iput-object v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 59
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    .line 60
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 120
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/solver/SolverVariable$Type;)V
    .locals 5

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "type":Landroidx/constraintlayout/solver/SolverVariable$Type;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 49
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 50
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 51
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 55
    move-object v3, v0

    const/4 v4, 0x7

    new-array v4, v4, [F

    iput-object v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->strengthVector:[F

    .line 58
    move-object v3, v0

    const/16 v4, 0x8

    new-array v4, v4, [Landroidx/constraintlayout/solver/ArrayRow;

    iput-object v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 59
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    .line 60
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 115
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->mName:Ljava/lang/String;

    .line 116
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 117
    return-void
.end method

.method private static getUniqueName(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "type":Landroidx/constraintlayout/solver/SolverVariable$Type;
    move-object v1, p1

    .local v1, "prefix":Ljava/lang/String;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroidx/constraintlayout/solver/SolverVariable;->uniqueErrorId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 104
    .end local v0    # "type":Landroidx/constraintlayout/solver/SolverVariable$Type;
    :goto_0
    return-object v0

    .line 96
    .restart local v0    # "type":Landroidx/constraintlayout/solver/SolverVariable$Type;
    :cond_0
    sget-object v2, Landroidx/constraintlayout/solver/SolverVariable$1;->$SwitchMap$androidx$constraintlayout$solver$SolverVariable$Type:[I

    move-object v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/SolverVariable$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 106
    new-instance v2, Ljava/lang/AssertionError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/SolverVariable$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 97
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "U"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroidx/constraintlayout/solver/SolverVariable;->uniqueUnrestrictedId:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v5, v3

    move v3, v5

    move v4, v5

    sput v4, Landroidx/constraintlayout/solver/SolverVariable;->uniqueUnrestrictedId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 98
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "C"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroidx/constraintlayout/solver/SolverVariable;->uniqueConstantId:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v5, v3

    move v3, v5

    move v4, v5

    sput v4, Landroidx/constraintlayout/solver/SolverVariable;->uniqueConstantId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 99
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "S"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroidx/constraintlayout/solver/SolverVariable;->uniqueSlackId:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v5, v3

    move v3, v5

    move v4, v5

    sput v4, Landroidx/constraintlayout/solver/SolverVariable;->uniqueSlackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto/16 :goto_0

    .line 101
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroidx/constraintlayout/solver/SolverVariable;->uniqueErrorId:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v5, v3

    move v3, v5

    move v4, v5

    sput v4, Landroidx/constraintlayout/solver/SolverVariable;->uniqueErrorId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto/16 :goto_0

    .line 104
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "V"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroidx/constraintlayout/solver/SolverVariable;->uniqueId:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v5, v3

    move v3, v5

    move v4, v5

    sput v4, Landroidx/constraintlayout/solver/SolverVariable;->uniqueId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto/16 :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static increaseErrorId()V
    .locals 2

    .prologue
    .line 89
    sget v0, Landroidx/constraintlayout/solver/SolverVariable;->uniqueErrorId:I

    const/4 v1, 0x1

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroidx/constraintlayout/solver/SolverVariable;->uniqueErrorId:I

    .line 90
    return-void
.end method


# virtual methods
.method public final addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 8

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v1, p1

    .local v1, "row":Landroidx/constraintlayout/solver/ArrayRow;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    if-ge v3, v4, :cond_1

    .line 164
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    move v4, v2

    aget-object v3, v3, v4

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 165
    .line 173
    :goto_1
    return-void

    .line 163
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    :cond_1
    move-object v3, v0

    iget v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 169
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    array-length v5, v5

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroidx/constraintlayout/solver/ArrayRow;

    iput-object v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 171
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    move-object v5, v1

    aput-object v5, v3, v4

    .line 172
    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    .line 173
    goto :goto_1
.end method

.method clearStrengths()V
    .locals 5

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    .line 128
    move-object v2, v0

    iget-object v2, v2, Landroidx/constraintlayout/solver/SolverVariable;->strengthVector:[F

    move v3, v1

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v1, v0

    iget-object v1, v1, Landroidx/constraintlayout/solver/SolverVariable;->mName:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Landroidx/constraintlayout/solver/SolverVariable;
    return-object v0
.end method

.method public final removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 11

    .prologue
    .line 176
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v1, p1

    .local v1, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v5, v0

    iget v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    move v2, v5

    .line 177
    .local v2, "count":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_2

    .line 178
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    move v6, v3

    aget-object v5, v5, v6

    move-object v6, v1

    if-ne v5, v6, :cond_1

    .line 179
    const/4 v5, 0x0

    move v4, v5

    .local v4, "j":I
    :goto_1
    move v5, v4

    move v6, v2

    move v7, v3

    sub-int/2addr v6, v7

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_0

    .line 180
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    move v6, v3

    move v7, v4

    add-int/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    move v8, v3

    move v9, v4

    add-int/2addr v8, v9

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    .line 179
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 182
    :cond_0
    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    .line 183
    .line 186
    .end local v4    # "j":I
    :goto_2
    return-void

    .line 177
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 186
    :cond_2
    goto :goto_2
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroidx/constraintlayout/solver/SolverVariable;->mName:Ljava/lang/String;

    .line 198
    move-object v1, v0

    sget-object v2, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNKNOWN:Landroidx/constraintlayout/solver/SolverVariable$Type;

    iput-object v2, v1, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 199
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 200
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 201
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 202
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    .line 203
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    .line 204
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/SolverVariable;->usageInRowCount:I

    .line 205
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroidx/constraintlayout/solver/SolverVariable;->mName:Ljava/lang/String;

    return-void
.end method

.method public setType(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v1, p1

    .local v1, "type":Landroidx/constraintlayout/solver/SolverVariable$Type;
    move-object v2, p2

    .local v2, "prefix":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 222
    return-void
.end method

.method strengthsToString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/SolverVariable;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 134
    .local v1, "representation":Ljava/lang/String;
    const/4 v5, 0x0

    move v2, v5

    .line 135
    .local v2, "negative":Z
    const/4 v5, 0x1

    move v3, v5

    .line 136
    .local v3, "empty":Z
    const/4 v5, 0x0

    move v4, v5

    .local v4, "j":I
    :goto_0
    move v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->strengthVector:[F

    array-length v6, v6

    if-ge v5, v6, :cond_4

    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->strengthVector:[F

    move v7, v4

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 138
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->strengthVector:[F

    move v6, v4

    aget v5, v5, v6

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 139
    const/4 v5, 0x0

    move v2, v5

    .line 143
    :cond_0
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->strengthVector:[F

    move v6, v4

    aget v5, v5, v6

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    .line 144
    const/4 v5, 0x0

    move v3, v5

    .line 146
    :cond_1
    move v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->strengthVector:[F

    array-length v6, v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_3

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 136
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 140
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->strengthVector:[F

    move v6, v4

    aget v5, v5, v6

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 141
    const/4 v5, 0x1

    move v2, v5

    goto :goto_1

    .line 149
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    goto :goto_2

    .line 152
    :cond_4
    move v5, v2

    if-eqz v5, :cond_5

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (-)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 155
    :cond_5
    move v5, v3

    if-eqz v5, :cond_6

    .line 156
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (*)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 159
    :cond_6
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Landroidx/constraintlayout/solver/SolverVariable;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/SolverVariable;
    const-string/jumbo v2, ""

    move-object v1, v2

    .line 233
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 235
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Landroidx/constraintlayout/solver/SolverVariable;
    return-object v0
.end method

.method public final updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 8

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Landroidx/constraintlayout/solver/SolverVariable;
    move-object v1, p1

    .local v1, "definition":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v4, v0

    iget v4, v4, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    move v2, v4

    .line 190
    .local v2, "count":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 191
    move-object v4, v0

    iget-object v4, v4, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    move v5, v3

    aget-object v4, v4, v5

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    move-object v5, v0

    iget-object v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/solver/ArrayRow;

    move v6, v3

    aget-object v5, v5, v6

    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->updateFromRow(Landroidx/constraintlayout/solver/ArrayRow;Landroidx/constraintlayout/solver/ArrayRow;Z)V

    .line 190
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 193
    :cond_0
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroidx/constraintlayout/solver/SolverVariable;->mClientEquationsCount:I

    .line 194
    return-void
.end method
