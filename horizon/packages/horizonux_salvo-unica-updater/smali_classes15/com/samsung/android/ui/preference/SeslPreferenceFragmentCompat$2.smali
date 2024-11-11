.class Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$2;
.super Ljava/lang/Object;
.source "SeslPreferenceFragmentCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;


# direct methods
.method constructor <init>(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;

    .line 64
    iput-object p1, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$2;->this$0:Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat$2;->this$0:Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;

    invoke-static {v0}, Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;->access$000(Lcom/samsung/android/ui/preference/SeslPreferenceFragmentCompat;)Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;

    move-result-object v0

    .line 67
    .local v0, "var1":Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;
    invoke-virtual {v0, v0}, Lcom/samsung/android/ui/recyclerview/widget/SeslRecyclerView;->focusableViewAvailable(Landroid/view/View;)V

    .line 68
    return-void
.end method
