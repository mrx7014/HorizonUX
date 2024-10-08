.class public Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "SeslAppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public firstVisibleChildAtMinimumHeight:Z

.field public firstVisibleChildIndex:I

.field public firstVisibleChildPercentageShown:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1642
    new-instance v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$SavedState$1;

    invoke-direct {v0}, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$SavedState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "var1"    # Landroid/os/Parcel;
    .param p2, "var2"    # Ljava/lang/ClassLoader;

    .line 1660
    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 1661
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$SavedState;->firstVisibleChildIndex:I

    .line 1662
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$SavedState;->firstVisibleChildPercentageShown:F

    .line 1664
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    .line 1665
    const/4 v0, 0x1

    .local v0, "var3":Z
    goto :goto_0

    .line 1667
    .end local v0    # "var3":Z
    :cond_0
    const/4 v0, 0x0

    .line 1670
    .restart local v0    # "var3":Z
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    .line 1671
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "var1"    # Landroid/os/Parcelable;

    .line 1674
    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1675
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "var1"    # Landroid/os/Parcel;
    .param p2, "var2"    # I

    .line 1678
    invoke-super {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1679
    iget v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$SavedState;->firstVisibleChildIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1680
    iget v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$SavedState;->firstVisibleChildPercentageShown:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1681
    iget-boolean v0, p0, Lcom/samsung/android/ui/appbar/SeslAppBarLayout$BaseBehavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1682
    return-void
.end method
