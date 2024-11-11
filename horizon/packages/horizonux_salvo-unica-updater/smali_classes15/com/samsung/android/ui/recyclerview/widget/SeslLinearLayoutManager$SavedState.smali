.class public Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "SeslLinearLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAnchorLayoutFromEnd:Z

.field mAnchorOffset:I

.field mAnchorPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1609
    new-instance v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState$1;

    invoke-direct {v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1578
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 1579
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 1580
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 1581
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;)V
    .locals 1
    .param p1, "other"    # Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;

    .line 1583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1584
    iget v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 1585
    iget v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->mAnchorOffset:I

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 1586
    iget-boolean v0, p1, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 1587
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1599
    const/4 v0, 0x0

    return v0
.end method

.method hasValidAnchor()Z
    .locals 1

    .line 1590
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->mAnchorPosition:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method invalidateAnchor()V
    .locals 1

    .line 1594
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 1595
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1604
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->mAnchorPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1605
    iget v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->mAnchorOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1606
    iget-boolean v0, p0, Lcom/samsung/android/ui/recyclerview/widget/SeslLinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1607
    return-void
.end method
