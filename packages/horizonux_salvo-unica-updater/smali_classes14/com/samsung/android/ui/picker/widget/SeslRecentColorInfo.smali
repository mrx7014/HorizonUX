.class public Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;
.super Ljava/lang/Object;
.source "SeslRecentColorInfo.java"


# instance fields
.field private mCurrentColor:Ljava/lang/Integer;

.field private mNewColor:Ljava/lang/Integer;

.field private mRecentColorInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedColor:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->mCurrentColor:Ljava/lang/Integer;

    .line 22
    iput-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->mNewColor:Ljava/lang/Integer;

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->mRecentColorInfo:Ljava/util/ArrayList;

    .line 24
    iput-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->mSelectedColor:Ljava/lang/Integer;

    .line 27
    return-void
.end method


# virtual methods
.method public getCurrentColor()Ljava/lang/Integer;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->mCurrentColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNewColor()Ljava/lang/Integer;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->mNewColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRecentColorInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->mRecentColorInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectedColor()Ljava/lang/Integer;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->mSelectedColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public initRecentColorInfo([I)V
    .locals 6
    .param p1, "var1"    # [I

    .line 46
    if-eqz p1, :cond_1

    .line 47
    array-length v0, p1

    .line 48
    .local v0, "var2":I
    const/4 v1, 0x0

    .line 49
    .local v1, "var3":I
    const/4 v2, 0x0

    .line 50
    .local v2, "var4":B
    const/4 v3, 0x6

    if-gt v0, v3, :cond_0

    .line 51
    array-length v0, p1

    .line 53
    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_1

    .line 54
    aget v3, p1, v1

    .line 55
    .local v3, "var5":I
    iget-object v4, p0, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->mRecentColorInfo:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .end local v3    # "var5":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_0
    :goto_1
    if-ge v1, v3, :cond_1

    .line 59
    iget-object v4, p0, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->mRecentColorInfo:Ljava/util/ArrayList;

    aget v5, p1, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 65
    .end local v0    # "var2":I
    .end local v1    # "var3":I
    .end local v2    # "var4":B
    :cond_1
    return-void
.end method

.method public saveSelectedColor(I)V
    .locals 1
    .param p1, "var1"    # I

    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->mSelectedColor:Ljava/lang/Integer;

    .line 69
    return-void
.end method

.method public setCurrentColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "var1"    # Ljava/lang/Integer;

    .line 72
    iput-object p1, p0, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->mCurrentColor:Ljava/lang/Integer;

    .line 73
    return-void
.end method

.method public setNewColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "var1"    # Ljava/lang/Integer;

    .line 76
    iput-object p1, p0, Lcom/samsung/android/ui/picker/widget/SeslRecentColorInfo;->mNewColor:Ljava/lang/Integer;

    .line 77
    return-void
.end method
