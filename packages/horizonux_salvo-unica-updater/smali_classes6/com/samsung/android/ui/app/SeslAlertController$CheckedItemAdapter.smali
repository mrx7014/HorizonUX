.class Lcom/samsung/android/ui/app/SeslAlertController$CheckedItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SeslAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/app/SeslAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # [Ljava/lang/CharSequence;

    .line 1373
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 1374
    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2
    .param p1, "var1"    # I

    .line 1377
    int-to-long v0, p1

    return-wide v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 1381
    const/4 v0, 0x1

    return v0
.end method
