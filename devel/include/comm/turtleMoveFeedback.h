// Generated by gencpp from file comm/turtleMoveFeedback.msg
// DO NOT EDIT!


#ifndef COMM_MESSAGE_TURTLEMOVEFEEDBACK_H
#define COMM_MESSAGE_TURTLEMOVEFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace comm
{
template <class ContainerAllocator>
struct turtleMoveFeedback_
{
  typedef turtleMoveFeedback_<ContainerAllocator> Type;

  turtleMoveFeedback_()
    : present_turtle_x(0.0)
    , present_turtle_y(0.0)
    , present_turtle_theta(0.0)  {
    }
  turtleMoveFeedback_(const ContainerAllocator& _alloc)
    : present_turtle_x(0.0)
    , present_turtle_y(0.0)
    , present_turtle_theta(0.0)  {
  (void)_alloc;
    }



   typedef double _present_turtle_x_type;
  _present_turtle_x_type present_turtle_x;

   typedef double _present_turtle_y_type;
  _present_turtle_y_type present_turtle_y;

   typedef double _present_turtle_theta_type;
  _present_turtle_theta_type present_turtle_theta;





  typedef boost::shared_ptr< ::comm::turtleMoveFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::comm::turtleMoveFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct turtleMoveFeedback_

typedef ::comm::turtleMoveFeedback_<std::allocator<void> > turtleMoveFeedback;

typedef boost::shared_ptr< ::comm::turtleMoveFeedback > turtleMoveFeedbackPtr;
typedef boost::shared_ptr< ::comm::turtleMoveFeedback const> turtleMoveFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::comm::turtleMoveFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::comm::turtleMoveFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::comm::turtleMoveFeedback_<ContainerAllocator1> & lhs, const ::comm::turtleMoveFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.present_turtle_x == rhs.present_turtle_x &&
    lhs.present_turtle_y == rhs.present_turtle_y &&
    lhs.present_turtle_theta == rhs.present_turtle_theta;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::comm::turtleMoveFeedback_<ContainerAllocator1> & lhs, const ::comm::turtleMoveFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace comm

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::comm::turtleMoveFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::comm::turtleMoveFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::comm::turtleMoveFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::comm::turtleMoveFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::comm::turtleMoveFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::comm::turtleMoveFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::comm::turtleMoveFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4d26027f0f230cc5b61fa6b93405965c";
  }

  static const char* value(const ::comm::turtleMoveFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4d26027f0f230cc5ULL;
  static const uint64_t static_value2 = 0xb61fa6b93405965cULL;
};

template<class ContainerAllocator>
struct DataType< ::comm::turtleMoveFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "comm/turtleMoveFeedback";
  }

  static const char* value(const ::comm::turtleMoveFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::comm::turtleMoveFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define a feedback message\n"
"float64 present_turtle_x\n"
"float64 present_turtle_y\n"
"float64 present_turtle_theta\n"
"\n"
;
  }

  static const char* value(const ::comm::turtleMoveFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::comm::turtleMoveFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.present_turtle_x);
      stream.next(m.present_turtle_y);
      stream.next(m.present_turtle_theta);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct turtleMoveFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::comm::turtleMoveFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::comm::turtleMoveFeedback_<ContainerAllocator>& v)
  {
    s << indent << "present_turtle_x: ";
    Printer<double>::stream(s, indent + "  ", v.present_turtle_x);
    s << indent << "present_turtle_y: ";
    Printer<double>::stream(s, indent + "  ", v.present_turtle_y);
    s << indent << "present_turtle_theta: ";
    Printer<double>::stream(s, indent + "  ", v.present_turtle_theta);
  }
};

} // namespace message_operations
} // namespace ros

#endif // COMM_MESSAGE_TURTLEMOVEFEEDBACK_H
